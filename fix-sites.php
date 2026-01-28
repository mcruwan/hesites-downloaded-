<?php
/**
 * Website Cleanup Script
 * Fixes common issues in downloaded websites to make them work on servers
 * 
 * Usage: php fix-sites.php [options]
 * 
 * Options:
 *   --input=<path>     Input directory (default: current directory)
 *   --output=<path>    Output directory (default: ./fixed-sites)
 *   --domain=<domain>  New domain for URL replacement (optional)
 *   --dry-run          Show what would be changed without making changes
 *   --verbose          Show detailed progress
 */

class WebsiteFixerTool {
    private $inputDir;
    private $outputDir;
    private $newDomain;
    private $dryRun;
    private $verbose;
    private $stats;
    
    // Patterns for problematic external services
    private $externalServices = [
        'google-analytics' => '/<!-- Google Analytics -->.*?<!-- End Google Analytics -->/s',
        'google-tag-manager' => '/<!-- Google Tag Manager -->.*?<!-- End Google Tag Manager -->/s',
        'facebook-pixel' => '/<script[^>]*facebook\.net.*?<\/script>/s',
        'recaptcha' => '/<script[^>]*recaptcha.*?<\/script>/s',
        'gtag' => '/<script[^>]*gtag\.js.*?<\/script>/s',
    ];
    
    public function __construct($options = []) {
        $this->inputDir = $options['input'] ?? getcwd();
        $this->outputDir = $options['output'] ?? getcwd() . '/fixed-sites';
        $this->newDomain = $options['domain'] ?? null;
        $this->dryRun = $options['dry-run'] ?? false;
        $this->verbose = $options['verbose'] ?? false;
        
        $this->stats = [
            'files_processed' => 0,
            'files_modified' => 0,
            'urls_fixed' => 0,
            'scripts_removed' => 0,
            'errors' => 0,
        ];
    }
    
    public function run() {
        $this->log("=== Website Fixer Tool ===\n", true);
        $this->log("Input: {$this->inputDir}", true);
        $this->log("Output: {$this->outputDir}", true);
        $this->log("Mode: " . ($this->dryRun ? "DRY RUN" : "LIVE"), true);
        echo "\n";
        
        if (!$this->dryRun && !is_dir($this->outputDir)) {
            mkdir($this->outputDir, 0755, true);
        }
        
        $this->processSites();
        $this->printStats();
    }
    
    private function processSites() {
        $sites = glob($this->inputDir . '/*', GLOB_ONLYDIR);
        
        foreach ($sites as $sitePath) {
            $siteName = basename($sitePath);
            $this->log("\nProcessing site: $siteName", true);
            $this->processSite($sitePath, $siteName);
        }
    }
    
    private function processSite($sitePath, $siteName) {
        $outputSitePath = $this->outputDir . '/' . $siteName;
        
        if (!$this->dryRun && !is_dir($outputSitePath)) {
            mkdir($outputSitePath, 0755, true);
        }
        
        // Find all HTML files
        $htmlFiles = $this->findFiles($sitePath, '*.html');
        
        foreach ($htmlFiles as $htmlFile) {
            $this->processHtmlFile($htmlFile, $sitePath, $outputSitePath);
        }
        
        // Copy non-HTML files
        if (!$this->dryRun) {
            $this->copyAssets($sitePath, $outputSitePath);
        }
    }
    
    private function processHtmlFile($filePath, $inputBase, $outputBase) {
        $this->stats['files_processed']++;
        $relativePath = str_replace($inputBase, '', $filePath);
        $outputPath = $outputBase . $relativePath;
        
        $this->log("  Processing: $relativePath");
        
        $content = file_get_contents($filePath);
        $originalContent = $content;
        
        // Extract the domain from the HTML if present
        $domain = $this->extractDomain($content);
        
        // Apply fixes
        $content = $this->removeExternalScripts($content);
        $content = $this->fixAbsoluteUrls($content, $domain);
        $content = $this->fixAjaxUrls($content);
        $content = $this->addSecurityHeaders($content);
        $content = $this->removeComments($content);
        
        if ($content !== $originalContent) {
            $this->stats['files_modified']++;
            $this->log("    ✓ Modified", true);
            
            if (!$this->dryRun) {
                $dir = dirname($outputPath);
                if (!is_dir($dir)) {
                    mkdir($dir, 0755, true);
                }
                file_put_contents($outputPath, $content);
            }
        } else {
            $this->log("    → No changes needed");
            
            if (!$this->dryRun) {
                $dir = dirname($outputPath);
                if (!is_dir($dir)) {
                    mkdir($dir, 0755, true);
                }
                copy($filePath, $outputPath);
            }
        }
    }
    
    private function extractDomain($content) {
        // Try to find domain from meta tags or saved URL comment
        if (preg_match('/<!-- saved from url=\((?:\d+)\)(https?:\/\/[^\/\s)]+)/i', $content, $matches)) {
            return parse_url($matches[1], PHP_URL_HOST);
        }
        
        if (preg_match('/<link[^>]+href=["\']https?:\/\/([^\/"\'\s]+)/i', $content, $matches)) {
            return $matches[1];
        }
        
        return null;
    }
    
    private function removeExternalScripts($content) {
        $count = 0;
        
        // Remove Google Analytics
        $content = preg_replace('/<!-- Google (tag|Analytics).*?-->/s', '', $content, -1, $matches);
        $count += $matches;
        
        // Remove Google Tag Manager
        $content = preg_replace('/<!-- Google Tag Manager -->.*?<!-- End Google Tag Manager -->/s', 
            '<!-- Google Tag Manager removed by fixer -->', $content, -1, $matches);
        $count += $matches;
        
        // Remove GTM noscript
        $content = preg_replace('/<!-- Google Tag Manager \(noscript\) -->.*?<!-- End Google Tag Manager \(noscript\) -->/s',
            '', $content, -1, $matches);
        $count += $matches;
        
        // Remove GA scripts
        $content = preg_replace('/<script[^>]*google-analytics\.com[^>]*>.*?<\/script>/s', '', $content, -1, $matches);
        $count += $matches;
        
        // Remove gtag.js
        $content = preg_replace('/<script[^>]*googletagmanager\.com\/gtag[^>]*>.*?<\/script>/s', '', $content, -1, $matches);
        $count += $matches;
        
        // Remove Facebook Pixel
        $content = preg_replace('/<script[^>]*facebook\.net[^>]*>.*?<\/script>/s', '', $content, -1, $matches);
        $count += $matches;
        
        // Remove reCAPTCHA
        $content = preg_replace('/<script[^>]*recaptcha[^>]*>.*?<\/script>/s', 
            '<!-- reCAPTCHA removed - requires API key -->', $content, -1, $matches);
        $count += $matches;
        
        // Remove inline GA code
        $content = preg_replace('/window\.dataLayer\s*=.*?gtag\([^)]+\);/s', '', $content, -1, $matches);
        $count += $matches;
        
        if ($count > 0) {
            $this->stats['scripts_removed'] += $count;
            $this->log("    Removed $count external scripts");
        }
        
        return $content;
    }
    
    private function fixAbsoluteUrls($content, $domain) {
        if (!$domain) {
            return $content;
        }
        
        $count = 0;
        $patterns = [
            // Fix href attributes
            '/href=["\']https?:\/\/' . preg_quote($domain, '/') . '\/([^"\']+)["\']/i',
            // Fix src attributes
            '/src=["\']https?:\/\/' . preg_quote($domain, '/') . '\/([^"\']+)["\']/i',
            // Fix data-src (lazy loading)
            '/data-src=["\']https?:\/\/' . preg_quote($domain, '/') . '\/([^"\']+)["\']/i',
            // Fix srcset
            '/srcset=["\']https?:\/\/' . preg_quote($domain, '/') . '\/([^"\']+)["\']/i',
        ];
        
        foreach ($patterns as $pattern) {
            $content = preg_replace_callback($pattern, function($matches) use (&$count) {
                $count++;
                $attr = substr($matches[0], 0, strpos($matches[0], '='));
                return $attr . '="./' . $matches[1] . '"';
            }, $content);
        }
        
        // Fix URLs in inline styles
        $content = preg_replace_callback(
            '/url\(["\']?https?:\/\/' . preg_quote($domain, '/') . '\/([^)"\'\s]+)["\']?\)/i',
            function($matches) use (&$count) {
                $count++;
                return 'url("./' . $matches[1] . '")';
            },
            $content
        );
        
        if ($count > 0) {
            $this->stats['urls_fixed'] += $count;
            $this->log("    Fixed $count absolute URLs");
        }
        
        return $content;
    }
    
    private function fixAjaxUrls($content) {
        $count = 0;
        
        // Comment out ajax_url definitions
        $content = preg_replace_callback(
            '/(var\s+\w+\s*=\s*\{[^}]*"ajax_url"\s*:\s*"[^"]*"[^}]*\})/s',
            function($matches) use (&$count) {
                $count++;
                return "/* AJAX disabled by fixer - requires backend\n" . $matches[1] . "\n*/";
            },
            $content
        );
        
        // Comment out ajaxurl definitions
        $content = preg_replace_callback(
            '/"ajaxurl"\s*:\s*"https?:\/\/[^"]+\/wp-admin\/admin-ajax\.php"/i',
            function($matches) use (&$count) {
                $count++;
                return '"ajaxurl": "" /* Disabled - no backend */';
            },
            $content
        );
        
        if ($count > 0) {
            $this->log("    Disabled $count AJAX endpoints");
        }
        
        return $content;
    }
    
    private function addSecurityHeaders($content) {
        // Add meta tags to prevent external resource loading issues
        $securityMeta = '
    <!-- Added by Website Fixer Tool -->
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <meta name="referrer" content="no-referrer-when-downgrade">
    <!-- End Website Fixer additions -->
';
        
        // Insert after <head> tag
        if (preg_match('/<head[^>]*>/i', $content)) {
            $content = preg_replace('/(<head[^>]*>)/i', '$1' . $securityMeta, $content, 1);
            $this->log("    Added security headers");
        }
        
        return $content;
    }
    
    private function removeComments($content) {
        // Remove HTML comments that reference original site
        $content = preg_replace('/<!-- saved from url.*?-->/i', '<!-- Downloaded and cleaned -->', $content);
        return $content;
    }
    
    private function copyAssets($sourcePath, $destPath) {
        $files = $this->findFiles($sourcePath, '*', ['html', 'htm', 'php']);
        
        foreach ($files as $file) {
            $relativePath = str_replace($sourcePath, '', $file);
            $destFile = $destPath . $relativePath;
            $destDir = dirname($destFile);
            
            if (!is_dir($destDir)) {
                mkdir($destDir, 0755, true);
            }
            
            if (!file_exists($destFile)) {
                copy($file, $destFile);
            }
        }
    }
    
    private function findFiles($dir, $pattern, $excludeExtensions = []) {
        $files = [];
        $iterator = new RecursiveIteratorIterator(
            new RecursiveDirectoryIterator($dir, RecursiveDirectoryIterator::SKIP_DOTS),
            RecursiveIteratorIterator::SELF_FIRST
        );
        
        foreach ($iterator as $file) {
            if ($file->isFile()) {
                $extension = strtolower($file->getExtension());
                
                if (!empty($excludeExtensions) && in_array($extension, $excludeExtensions)) {
                    continue;
                }
                
                if ($pattern === '*' || fnmatch($pattern, $file->getFilename())) {
                    $files[] = $file->getPathname();
                }
            }
        }
        
        return $files;
    }
    
    private function log($message, $force = false) {
        if ($this->verbose || $force) {
            echo $message . "\n";
        }
    }
    
    private function printStats() {
        echo "\n=== Processing Complete ===\n";
        echo "Files processed: {$this->stats['files_processed']}\n";
        echo "Files modified: {$this->stats['files_modified']}\n";
        echo "URLs fixed: {$this->stats['urls_fixed']}\n";
        echo "Scripts removed: {$this->stats['scripts_removed']}\n";
        
        if ($this->stats['errors'] > 0) {
            echo "Errors: {$this->stats['errors']}\n";
        }
        
        if ($this->dryRun) {
            echo "\n⚠ DRY RUN MODE - No files were actually modified\n";
        } else {
            echo "\n✓ Fixed sites saved to: {$this->outputDir}\n";
        }
    }
}

// Parse command line arguments
$options = [];
for ($i = 1; $i < $argc; $i++) {
    if (strpos($argv[$i], '--') === 0) {
        $arg = substr($argv[$i], 2);
        if (strpos($arg, '=') !== false) {
            list($key, $value) = explode('=', $arg, 2);
            $options[$key] = $value;
        } else {
            $options[$arg] = true;
        }
    }
}

// Show help if requested
if (isset($options['help']) || isset($options['h'])) {
    echo "Website Fixer Tool - Cleans downloaded websites for server deployment\n\n";
    echo "Usage: php fix-sites.php [options]\n\n";
    echo "Options:\n";
    echo "  --input=<path>     Input directory (default: current directory)\n";
    echo "  --output=<path>    Output directory (default: ./fixed-sites)\n";
    echo "  --domain=<domain>  New domain for URL replacement (optional)\n";
    echo "  --dry-run          Show what would be changed without making changes\n";
    echo "  --verbose          Show detailed progress\n";
    echo "  --help, -h         Show this help message\n\n";
    echo "Example:\n";
    echo "  php fix-sites.php --input=./hesites-downloaded- --output=./cleaned --verbose\n";
    exit(0);
}

// Run the tool
$fixer = new WebsiteFixerTool($options);
$fixer->run();
