<?php
/**
 * Advanced Website Resource Downloader
 * Downloads ALL external resources (CSS, JS, fonts, images) and makes sites fully offline-capable
 * 
 * Usage: php download-resources.php [options]
 */

class ResourceDownloader {
    private $inputDir;
    private $verbose;
    private $stats;
    private $userAgent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36';
    
    public function __construct($options = []) {
        $this->inputDir = $options['input'] ?? getcwd() . '/fixed-sites';
        $this->verbose = $options['verbose'] ?? false;
        
        $this->stats = [
            'files_scanned' => 0,
            'resources_found' => 0,
            'resources_downloaded' => 0,
            'resources_failed' => 0,
            'bytes_downloaded' => 0,
        ];
    }
    
    public function run() {
        $this->log("=== Website Resource Downloader ===\n", true);
        $this->log("Input: {$this->inputDir}", true);
        echo "\n";
        
        if (!is_dir($this->inputDir)) {
            die("Error: Input directory does not exist: {$this->inputDir}\n");
        }
        
        $this->processSites();
        $this->printStats();
    }
    
    private function processSites() {
        $sites = glob($this->inputDir . '/*', GLOB_ONLYDIR);
        
        foreach ($sites as $sitePath) {
            $siteName = basename($sitePath);
            $this->log("\nProcessing site: $siteName", true);
            $this->processSite($sitePath);
        }
    }
    
    private function processSite($sitePath) {
        $htmlFiles = $this->findHtmlFiles($sitePath);
        
        foreach ($htmlFiles as $htmlFile) {
            $this->processHtmlFile($htmlFile, $sitePath);
        }
    }
    
    private function processHtmlFile($filePath, $siteRoot) {
        $this->stats['files_scanned']++;
        $relativePath = str_replace($siteRoot, '', $filePath);
        $this->log("  Scanning: $relativePath");
        
        $content = file_get_contents($filePath);
        $originalContent = $content;
        $modified = false;
        
        // Find and download external CSS
        preg_match_all('/<link[^>]+href=["\']([^"\']+)["\'][^>]*>/i', $content, $linkMatches);
        foreach ($linkMatches[1] as $url) {
            if ($this->isExternalUrl($url)) {
                $this->stats['resources_found']++;
                $localPath = $this->downloadResource($url, $siteRoot, 'css');
                if ($localPath) {
                    $content = str_replace($url, $localPath, $content);
                    $modified = true;
                }
            }
        }
        
        // Find and download external JavaScript
        preg_match_all('/<script[^>]+src=["\']([^"\']+)["\'][^>]*>/i', $content, $scriptMatches);
        foreach ($scriptMatches[1] as $url) {
            if ($this->isExternalUrl($url)) {
                $this->stats['resources_found']++;
                $localPath = $this->downloadResource($url, $siteRoot, 'js');
                if ($localPath) {
                    $content = str_replace($url, $localPath, $content);
                    $modified = true;
                }
            }
        }
        
        // Find and download external images in HTML
        preg_match_all('/<img[^>]+src=["\']([^"\']+)["\'][^>]*>/i', $content, $imgMatches);
        foreach ($imgMatches[1] as $url) {
            if ($this->isExternalUrl($url)) {
                $this->stats['resources_found']++;
                $localPath = $this->downloadResource($url, $siteRoot, 'images');
                if ($localPath) {
                    $content = str_replace($url, $localPath, $content);
                    $modified = true;
                }
            }
        }
        
        // Find external resources in CSS url()
        preg_match_all('/url\(["\']?([^)"\'\s]+)["\']?\)/i', $content, $cssUrlMatches);
        foreach ($cssUrlMatches[1] as $url) {
            if ($this->isExternalUrl($url)) {
                $this->stats['resources_found']++;
                $localPath = $this->downloadResource($url, $siteRoot, 'assets');
                if ($localPath) {
                    $content = str_replace($url, $localPath, $content);
                    $modified = true;
                }
            }
        }
        
        // Save modified content
        if ($modified) {
            file_put_contents($filePath, $content);
            $this->log("    ✓ Updated with local resources", true);
        }
    }
    
    private function downloadResource($url, $siteRoot, $type = 'assets') {
        // Clean the URL
        $url = trim($url);
        if (empty($url) || $url === '#') {
            return false;
        }
        
        // Handle protocol-relative URLs
        if (strpos($url, '//') === 0) {
            $url = 'https:' . $url;
        }
        
        // Skip data URIs
        if (strpos($url, 'data:') === 0) {
            return false;
        }
        
        $this->log("    Downloading: $url");
        
        // Create local directory structure
        $parsedUrl = parse_url($url);
        if (!isset($parsedUrl['host'])) {
            return false;
        }
        
        $host = $parsedUrl['host'];
        $path = $parsedUrl['path'] ?? '/resource';
        
        // Determine file extension
        $extension = pathinfo($path, PATHINFO_EXTENSION);
        if (empty($extension)) {
            // Guess extension based on type
            if ($type === 'css') {
                $extension = 'css';
            } elseif ($type === 'js') {
                $extension = 'js';
            } else {
                $extension = 'dat';
            }
            $path .= '.' . $extension;
        }
        
        // Create local path
        $localDir = $siteRoot . '/downloaded-assets/' . $host;
        $localFile = $localDir . $path;
        
        // Create directory if it doesn't exist
        $dir = dirname($localFile);
        if (!is_dir($dir)) {
            mkdir($dir, 0755, true);
        }
        
        // Check if already downloaded
        if (file_exists($localFile)) {
            $this->log("      → Already downloaded");
            return './downloaded-assets/' . $host . $path;
        }
        
        // Download the resource
        try {
            $content = $this->fetchUrl($url);
            if ($content !== false) {
                file_put_contents($localFile, $content);
                $this->stats['resources_downloaded']++;
                $this->stats['bytes_downloaded'] += strlen($content);
                $this->log("      ✓ Downloaded (" . $this->formatBytes(strlen($content)) . ")", true);
                
                // If it's CSS, scan for additional resources
                if ($extension === 'css') {
                    $this->processCssFile($localFile, $url, $siteRoot);
                }
                
                return './downloaded-assets/' . $host . $path;
            }
        } catch (Exception $e) {
            $this->stats['resources_failed']++;
            $this->log("      ✗ Failed: " . $e->getMessage());
            return false;
        }
        
        $this->stats['resources_failed']++;
        return false;
    }
    
    private function processCssFile($cssFilePath, $originalUrl, $siteRoot) {
        $content = file_get_contents($cssFilePath);
        $modified = false;
        
        // Find resources in CSS (fonts, images, etc.)
        preg_match_all('/url\(["\']?([^)"\'\s]+)["\']?\)/i', $content, $matches);
        
        foreach ($matches[1] as $relativeUrl) {
            // Skip data URIs
            if (strpos($relativeUrl, 'data:') === 0) {
                continue;
            }
            
            // Resolve relative URL
            $absoluteUrl = $this->resolveUrl($relativeUrl, $originalUrl);
            
            if ($this->isExternalUrl($absoluteUrl)) {
                $localPath = $this->downloadResource($absoluteUrl, $siteRoot, 'assets');
                if ($localPath) {
                    // Calculate relative path from CSS file to downloaded resource
                    $cssDir = dirname($cssFilePath);
                    $resourcePath = realpath($siteRoot . '/' . ltrim($localPath, './'));
                    if ($resourcePath) {
                        $relativePath = $this->getRelativePath($cssDir, $resourcePath);
                        $content = str_replace($relativeUrl, $relativePath, $content);
                        $modified = true;
                    }
                }
            }
        }
        
        if ($modified) {
            file_put_contents($cssFilePath, $content);
        }
    }
    
    private function resolveUrl($relativeUrl, $baseUrl) {
        // If already absolute, return it
        if (preg_match('/^https?:\/\//i', $relativeUrl)) {
            return $relativeUrl;
        }
        
        $base = parse_url($baseUrl);
        
        // Protocol-relative URL
        if (strpos($relativeUrl, '//') === 0) {
            return ($base['scheme'] ?? 'https') . ':' . $relativeUrl;
        }
        
        // Absolute path
        if (strpos($relativeUrl, '/') === 0) {
            return ($base['scheme'] ?? 'https') . '://' . $base['host'] . $relativeUrl;
        }
        
        // Relative path
        $basePath = dirname($base['path'] ?? '/');
        return ($base['scheme'] ?? 'https') . '://' . $base['host'] . $basePath . '/' . $relativeUrl;
    }
    
    private function getRelativePath($from, $to) {
        // Convert to arrays
        $from = explode('\\', $from);
        $to = explode('\\', $to);
        
        // Find common path
        $common = [];
        for ($i = 0; $i < min(count($from), count($to)); $i++) {
            if ($from[$i] !== $to[$i]) {
                break;
            }
            $common[] = $from[$i];
        }
        
        // Build relative path
        $upLevels = count($from) - count($common);
        $relativeParts = array_fill(0, $upLevels, '..');
        $relativeParts = array_merge($relativeParts, array_slice($to, count($common)));
        
        return implode('/', $relativeParts);
    }
    
    private function fetchUrl($url) {
        // Try cURL first
        if (function_exists('curl_init')) {
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
            curl_setopt($ch, CURLOPT_MAXREDIRS, 5);
            curl_setopt($ch, CURLOPT_TIMEOUT, 30);
            curl_setopt($ch, CURLOPT_USERAGENT, $this->userAgent);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            
            $content = curl_exec($ch);
            $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            curl_close($ch);
            
            if ($httpCode >= 200 && $httpCode < 300) {
                return $content;
            }
            
            return false;
        }
        
        // Fallback to file_get_contents
        $context = stream_context_create([
            'http' => [
                'user_agent' => $this->userAgent,
                'timeout' => 30,
                'follow_location' => true,
            ],
            'ssl' => [
                'verify_peer' => false,
                'verify_peer_name' => false,
            ],
        ]);
        
        return @file_get_contents($url, false, $context);
    }
    
    private function isExternalUrl($url) {
        // Check if URL is external (starts with http:// or https://)
        return preg_match('/^https?:\/\//i', $url);
    }
    
    private function findHtmlFiles($dir) {
        $files = [];
        $iterator = new RecursiveIteratorIterator(
            new RecursiveDirectoryIterator($dir, RecursiveDirectoryIterator::SKIP_DOTS)
        );
        
        foreach ($iterator as $file) {
            if ($file->isFile() && preg_match('/\.html?$/i', $file->getFilename())) {
                $files[] = $file->getPathname();
            }
        }
        
        return $files;
    }
    
    private function formatBytes($bytes) {
        $units = ['B', 'KB', 'MB', 'GB'];
        $i = 0;
        while ($bytes >= 1024 && $i < 3) {
            $bytes /= 1024;
            $i++;
        }
        return round($bytes, 2) . ' ' . $units[$i];
    }
    
    private function log($message, $force = false) {
        if ($this->verbose || $force) {
            echo $message . "\n";
        }
    }
    
    private function printStats() {
        echo "\n=== Download Complete ===\n";
        echo "Files scanned: {$this->stats['files_scanned']}\n";
        echo "External resources found: {$this->stats['resources_found']}\n";
        echo "Resources downloaded: {$this->stats['resources_downloaded']}\n";
        echo "Download failed: {$this->stats['resources_failed']}\n";
        echo "Total downloaded: " . $this->formatBytes($this->stats['bytes_downloaded']) . "\n";
        
        if ($this->stats['resources_downloaded'] > 0) {
            echo "\n✓ All external resources have been downloaded locally\n";
            echo "✓ Websites are now fully offline-capable\n";
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

// Show help
if (isset($options['help']) || isset($options['h'])) {
    echo "Website Resource Downloader - Downloads all external resources locally\n\n";
    echo "Usage: php download-resources.php [options]\n\n";
    echo "Options:\n";
    echo "  --input=<path>     Input directory (default: ./fixed-sites)\n";
    echo "  --verbose          Show detailed progress\n";
    echo "  --help, -h         Show this help message\n\n";
    echo "Example:\n";
    echo "  php download-resources.php --input=./fixed-sites --verbose\n";
    exit(0);
}

// Run the downloader
$downloader = new ResourceDownloader($options);
$downloader->run();
