#!/usr/bin/env php
<?php
/**
 * Phase 3: Fix Missing Font CSS Files & Remaining AJAX Calls
 * 
 * This script addresses issues found after Phase 1 & 2:
 * 1. Creates missing Google Font CSS files with fallbacks
 * 2. Removes remaining absolute AJAX URLs
 * 3. Fixes popup builder and other plugin AJAX calls
 * 
 * Run this after running the main fix-sites.php script
 */

error_reporting(E_ALL);
ini_set('display_errors', 1);
set_time_limit(0);

// Parse command line arguments
$options = getopt('', ['input:', 'verbose', 'help']);

if (isset($options['help'])) {
    showHelp();
    exit(0);
}

$inputDir = $options['input'] ?? './fixed-sites';
$verbose = isset($options['verbose']);

// Validate input directory
if (!is_dir($inputDir)) {
    error("Input directory does not exist: $inputDir");
}

echo "==============================================\n";
echo "   Phase 3: Additional Fixes\n";
echo "==============================================\n\n";

log_message("Starting Phase 3 fixes on: $inputDir", true);

// Common Google Fonts that need fallback CSS files
$fontFallbacks = [
    'roboto' => [
        'name' => 'Roboto',
        'css' => "/* Roboto Font - Fallback to system fonts */\nbody, .elementor-widget, .roboto {\n    font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif;\n}\n"
    ],
    'robotoslab' => [
        'name' => 'Roboto Slab',
        'css' => "/* Roboto Slab Font - Fallback to system fonts */\nh1, h2, h3, h4, h5, h6, .elementor-heading-title, .roboto-slab {\n    font-family: Georgia, \"Times New Roman\", serif;\n}\n"
    ],
    'opensans' => [
        'name' => 'Open Sans',
        'css' => "/* Open Sans Font - Fallback to system fonts */\n.open-sans {\n    font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Arial, sans-serif;\n}\n"
    ],
    'josefinsans' => [
        'name' => 'Josefin Sans',
        'css' => "/* Josefin Sans Font - Fallback to system fonts */\n.josefin-sans {\n    font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", sans-serif;\n}\n"
    ],
    'sourcesanspro' => [
        'name' => 'Source Sans Pro',
        'css' => "/* Source Sans Pro Font - Fallback to system fonts */\n.source-sans-pro {\n    font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Arial, sans-serif;\n}\n"
    ],
    'worksans' => [
        'name' => 'Work Sans',
        'css' => "/* Work Sans Font - Fallback to system fonts */\n.work-sans {\n    font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Arial, sans-serif;\n}\n"
    ],
    'quicksand' => [
        'name' => 'Quicksand',
        'css' => "/* Quicksand Font - Fallback to system fonts */\n.quicksand {\n    font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Arial, sans-serif;\n}\n"
    ],
    'lato' => [
        'name' => 'Lato',
        'css' => "/* Lato Font - Fallback to system fonts */\n.lato {\n    font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Arial, sans-serif;\n}\n"
    ],
    'montserrat' => [
        'name' => 'Montserrat',
        'css' => "/* Montserrat Font - Fallback to system fonts */\n.montserrat {\n    font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Arial, sans-serif;\n}\n"
    ],
    'poppins' => [
        'name' => 'Poppins',
        'css' => "/* Poppins Font - Fallback to system fonts */\n.poppins {\n    font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Arial, sans-serif;\n}\n"
    ],
    'raleway' => [
        'name' => 'Raleway',
        'css' => "/* Raleway Font - Fallback to system fonts */\n.raleway {\n    font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Arial, sans-serif;\n}\n"
    ],
    'playfairdisplay' => [
        'name' => 'Playfair Display',
        'css' => "/* Playfair Display Font - Fallback to system fonts */\n.playfair-display {\n    font-family: Georgia, \"Times New Roman\", serif;\n}\n"
    ],
];

$stats = [
    'sites_processed' => 0,
    'html_files_fixed' => 0,
    'font_files_created' => 0,
    'ajax_calls_removed' => 0,
];

// Get all site directories (first level subdirectories)
$siteDirs = glob($inputDir . '/*', GLOB_ONLYDIR);

foreach ($siteDirs as $siteDir) {
    $siteName = basename($siteDir);
    
    $stats['sites_processed']++;
    
    log_message("Processing site: $siteName", true);
    
    // Process this site
    $result = processSite($siteDir, $siteName, $fontFallbacks, $verbose);
    
    $stats['html_files_fixed'] += $result['html_fixed'];
    $stats['font_files_created'] += $result['fonts_created'];
    $stats['ajax_calls_removed'] += $result['ajax_removed'];
}

// Show summary
echo "\n";
echo "==============================================\n";
echo "   Phase 3 Complete!\n";
echo "==============================================\n\n";
echo "Sites processed:      {$stats['sites_processed']}\n";
echo "HTML files fixed:     {$stats['html_files_fixed']}\n";
echo "Font files created:   {$stats['font_files_created']}\n";
echo "AJAX calls removed:   {$stats['ajax_calls_removed']}\n";
echo "\n";

/**
 * Process a single site
 */
function processSite($siteDir, $siteName, $fontFallbacks, $verbose) {
    $result = [
        'html_fixed' => 0,
        'fonts_created' => 0,
        'ajax_removed' => 0,
    ];
    
    // Find all HTML files
    $htmlFiles = glob($siteDir . '/*.html');
    
    foreach ($htmlFiles as $htmlFile) {
        $content = file_get_contents($htmlFile);
        $originalContent = $content;
        
        // Check for font CSS references and create missing files
        foreach ($fontFallbacks as $fontKey => $fontInfo) {
            $pattern = '/href=["\']\.\/[^"\']*\/' . preg_quote($fontKey, '/') . '\.css["\']/i';
            
            if (preg_match($pattern, $content, $matches)) {
                // Extract the path from the match
                preg_match('/href=["\'](\.\/[^"\']*\/' . preg_quote($fontKey, '/') . '\.css)["\']/i', $content, $pathMatch);
                
                if (!empty($pathMatch[1])) {
                    $fontCssPath = dirname($htmlFile) . '/' . $pathMatch[1];
                    $fontCssPath = str_replace('\\', '/', $fontCssPath);
                    $fontCssPath = preg_replace('#/+#', '/', $fontCssPath);
                    
                    // Make sure directory exists
                    $fontDir = dirname($fontCssPath);
                    if (!is_dir($fontDir)) {
                        mkdir($fontDir, 0755, true);
                    }
                    
                    if (!file_exists($fontCssPath)) {
                        file_put_contents($fontCssPath, $fontInfo['css']);
                        $result['fonts_created']++;
                        
                        if ($verbose) {
                            log_message("  Created font file: " . basename($fontCssPath));
                        }
                    }
                }
            }
        }
        
        // Remove remaining absolute AJAX URLs
        $patterns = [
            // Popup Builder AJAX
            '/var\s+SGPB_JS_PARAMS\s*=\s*\{[^}]*"ajaxUrl"\s*:\s*"https?:\/\/[^"]*wp-admin\/admin-ajax\.php"[^}]*\};?/',
            // Other WordPress AJAX patterns
            '/var\s+\w+\s*=\s*\{[^}]*"ajax_url"\s*:\s*"https?:\/\/[^"]*wp-admin\/admin-ajax\.php"[^}]*\};?/',
            '/var\s+\w+\s*=\s*\{[^}]*"ajaxurl"\s*:\s*"https?:\/\/[^"]*wp-admin\/admin-ajax\.php"[^}]*\};?/',
            // Generic AJAX patterns
            '/"ajaxUrl"\s*:\s*"https?:\/\/[^"]*wp-admin\/admin-ajax\.php"/',
            '/"ajax_url"\s*:\s*"https?:\/\/[^"]*wp-admin\/admin-ajax\.php"/',
        ];
        
        foreach ($patterns as $pattern) {
            if (preg_match($pattern, $content, $matches)) {
                // Comment out the matched JS variable
                $content = preg_replace(
                    $pattern,
                    "/* AJAX disabled by Phase 3 fixer - requires backend\n" . trim($matches[0]) . "\n*/",
                    $content
                );
                $result['ajax_removed']++;
            }
        }
        
        // Save if changed
        if ($content !== $originalContent) {
            file_put_contents($htmlFile, $content);
            $result['html_fixed']++;
            
            if ($verbose) {
                log_message("  Fixed HTML: " . basename($htmlFile));
            }
        }
    }
    
    return $result;
}

/**
 * Log message with optional verbose flag
 */
function log_message($message, $always = false) {
    global $verbose;
    if ($always || $verbose) {
        echo $message . "\n";
    }
}

/**
 * Show error and exit
 */
function error($message) {
    echo "ERROR: $message\n";
    exit(1);
}

/**
 * Show help
 */
function showHelp() {
    echo <<<HELP
Phase 3 Fixer - Additional Fixes for Downloaded Websites

Usage:
  php fix-phase3.php --input=<directory> [--verbose] [--help]

Options:
  --input=<dir>    Input directory containing fixed sites (default: ./fixed-sites)
  --verbose        Show detailed progress
  --help           Show this help message

What this script does:
  1. Creates missing Google Font CSS files with system font fallbacks
  2. Removes remaining absolute AJAX URLs that bypass Phase 1
  3. Fixes popup builders and other plugin AJAX calls
  4. Addresses issues found when testing locally

Examples:
  php fix-phase3.php --input=./fixed-sites --verbose

HELP;
}
