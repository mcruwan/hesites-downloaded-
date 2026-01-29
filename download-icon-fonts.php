#!/usr/bin/env php
<?php
/**
 * Download Icon Fonts Script
 * 
 * Automatically downloads all common icon fonts for all sites
 * Run after fix-phase3.php if you want perfect icon display
 */

error_reporting(E_ALL);
ini_set('display_errors', 1);
set_time_limit(0);

$iconFonts = [
    // Elementor Icons (most common in WordPress)
    [
        'url' => 'https://cdnjs.cloudflare.com/ajax/libs/elementor-icons/5.45.0/fonts/eicons.woff2',
        'file' => 'eicons.woff2',
        'version' => '5.45.0'
    ],
    [
        'url' => 'https://cdnjs.cloudflare.com/ajax/libs/elementor-icons/5.45.0/fonts/eicons.woff',
        'file' => 'eicons.woff',
        'version' => '5.45.0'
    ],
    [
        'url' => 'https://cdnjs.cloudflare.com/ajax/libs/elementor-icons/5.45.0/fonts/eicons.ttf',
        'file' => 'eicons.ttf',
        'version' => '5.45.0'
    ],
    
    // Font Awesome 6 (very common)
    [
        'url' => 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/webfonts/fa-solid-900.woff2',
        'file' => 'fa-solid-900.woff2',
        'version' => '6.5.1'
    ],
    [
        'url' => 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/webfonts/fa-brands-400.woff2',
        'file' => 'fa-brands-400.woff2',
        'version' => '6.5.1'
    ],
    [
        'url' => 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/webfonts/fa-regular-400.woff2',
        'file' => 'fa-regular-400.woff2',
        'version' => '6.5.1'
    ],
    
    // Font Awesome 5 (still common)
    [
        'url' => 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/webfonts/fa-solid-900.woff2',
        'file' => 'fa-solid-900-v5.woff2',
        'version' => '5.15.4'
    ],
    [
        'url' => 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/webfonts/fa-brands-400.woff2',
        'file' => 'fa-brands-400-v5.woff2',
        'version' => '5.15.4'
    ],
];

$sitesDir = './fixed-sites';

// Validate directory
if (!is_dir($sitesDir)) {
    echo "ERROR: Directory not found: $sitesDir\n";
    exit(1);
}

$sites = glob($sitesDir . '/*', GLOB_ONLYDIR);

echo "==============================================\n";
echo "   Icon Fonts Downloader\n";
echo "==============================================\n\n";
echo "Downloading icon fonts for " . count($sites) . " sites...\n\n";

$stats = [
    'sites_processed' => 0,
    'downloaded' => 0,
    'skipped' => 0,
    'failed' => 0,
    'bytes_downloaded' => 0
];

foreach ($sites as $siteDir) {
    $siteName = basename($siteDir);
    $stats['sites_processed']++;
    
    echo "[$stats[sites_processed]/" . count($sites) . "] Processing: $siteName\n";
    
    // Check for index_files directory
    $possibleDirs = [
        $siteDir . '/index_files',
        $siteDir . '/assets',
        $siteDir . '/fonts',
    ];
    
    $targetDir = null;
    foreach ($possibleDirs as $dir) {
        if (is_dir($dir)) {
            $targetDir = $dir;
            break;
        }
    }
    
    if (!$targetDir) {
        echo "  ⚠️  No assets directory found, skipping\n";
        continue;
    }
    
    foreach ($iconFonts as $font) {
        $targetFile = $targetDir . '/' . $font['file'];
        
        // Skip if already exists
        if (file_exists($targetFile)) {
            $stats['skipped']++;
            continue;
        }
        
        echo "  Downloading {$font['file']} (v{$font['version']})... ";
        
        // Download with proper error handling
        $context = stream_context_create([
            'http' => [
                'timeout' => 30,
                'user_agent' => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
            ]
        ]);
        
        $content = @file_get_contents($font['url'], false, $context);
        
        if ($content === false) {
            echo "❌ Failed\n";
            $stats['failed']++;
            continue;
        }
        
        $bytes = file_put_contents($targetFile, $content);
        
        if ($bytes === false) {
            echo "❌ Write failed\n";
            $stats['failed']++;
            continue;
        }
        
        $stats['downloaded']++;
        $stats['bytes_downloaded'] += $bytes;
        
        $size = formatBytes($bytes);
        echo "✅ OK ($size)\n";
        
        // Small delay to be nice to CDNs
        usleep(200000); // 0.2 seconds
    }
}

echo "\n";
echo "==============================================\n";
echo "   Icon Fonts Download Complete!\n";
echo "==============================================\n\n";
echo "Sites processed:        {$stats['sites_processed']}\n";
echo "Fonts downloaded:       {$stats['downloaded']}\n";
echo "Skipped (exist):        {$stats['skipped']}\n";
echo "Failed:                 {$stats['failed']}\n";
echo "Total data downloaded:  " . formatBytes($stats['bytes_downloaded']) . "\n";
echo "\n";

if ($stats['failed'] > 0) {
    echo "⚠️  Some downloads failed. This is usually temporary.\n";
    echo "   Try running the script again in a few minutes.\n\n";
}

if ($stats['downloaded'] > 0) {
    echo "✅ Success! Test your sites - icons should now display correctly.\n\n";
} else {
    echo "ℹ️  No new fonts needed - all icon fonts already present.\n\n";
}

/**
 * Format bytes into human-readable size
 */
function formatBytes($bytes, $precision = 2) {
    $units = ['B', 'KB', 'MB', 'GB'];
    $bytes = max($bytes, 0);
    $pow = floor(($bytes ? log($bytes) : 0) / log(1024));
    $pow = min($pow, count($units) - 1);
    $bytes /= (1 << (10 * $pow));
    return round($bytes, $precision) . ' ' . $units[$pow];
}
