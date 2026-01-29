#!/usr/bin/env python3
"""
Complete External Dependency Scanner & Downloader
Scans ALL files for external URLs and downloads missing resources
"""

import os
import re
import sys
import time
import hashlib
import urllib.parse
from pathlib import Path
from urllib.parse import urlparse, urljoin
from collections import defaultdict
import json

try:
    import requests
    from bs4 import BeautifulSoup
except ImportError:
    print("ERROR: Required packages not installed!")
    print("\nPlease install:")
    print("  pip install requests beautifulsoup4")
    sys.exit(1)

class DependencyScanner:
    def __init__(self, base_dir, verbose=False):
        self.base_dir = Path(base_dir)
        self.verbose = verbose
        self.external_urls = defaultdict(list)  # domain -> [urls]
        self.downloaded = 0
        self.failed = 0
        self.skipped = 0
        self.total_bytes = 0
        
        # Common external domains to watch for
        self.external_patterns = [
            r'https?://[^"\'\s)]+',  # Any HTTP URL
            r'//[^"\'\s)]+',  # Protocol-relative URLs
        ]
        
        # File extensions to scan
        self.scannable_extensions = {'.html', '.htm', '.css', '.js', '.json', '.xml'}
        
        # User agent for downloads
        self.headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
        }
        
    def log(self, message, force=False):
        """Print message if verbose or force"""
        if self.verbose or force:
            print(message)
    
    def is_external_url(self, url, site_domain):
        """Check if URL is external to the site"""
        if not url or url.startswith('#') or url.startswith('data:'):
            return False
        
        # Parse URL
        parsed = urlparse(url)
        
        # Protocol-relative URLs are external
        if url.startswith('//'):
            return True
        
        # Relative URLs are not external
        if not parsed.scheme:
            return False
        
        # Check if domain is different from site domain
        if parsed.netloc and parsed.netloc != site_domain:
            # Not external if it's from the same site (different subdomain)
            if site_domain in parsed.netloc or parsed.netloc in site_domain:
                return False
            return True
        
        return False
    
    def extract_urls_from_html(self, content, base_url, site_domain):
        """Extract all URLs from HTML content"""
        urls = set()
        
        try:
            soup = BeautifulSoup(content, 'html.parser')
            
            # Extract from common tags
            patterns = {
                'link': 'href',
                'script': 'src',
                'img': 'src',
                'source': 'src',
                'iframe': 'src',
                'embed': 'src',
                'object': 'data',
                'video': 'src',
                'audio': 'src',
                'a': 'href',
            }
            
            for tag, attr in patterns.items():
                for element in soup.find_all(tag):
                    url = element.get(attr)
                    if url and self.is_external_url(url, site_domain):
                        # Make absolute
                        absolute_url = urljoin(base_url, url)
                        urls.add(absolute_url)
            
            # Extract from inline styles
            for element in soup.find_all(style=True):
                style_content = element.get('style', '')
                urls.update(self.extract_urls_from_css(style_content, base_url, site_domain))
            
            # Extract from style tags
            for style_tag in soup.find_all('style'):
                urls.update(self.extract_urls_from_css(style_tag.string or '', base_url, site_domain))
        
        except Exception as e:
            self.log(f"  Warning: HTML parsing error: {e}")
            # Fallback to regex
            urls.update(self.extract_urls_regex(content, base_url, site_domain))
        
        return urls
    
    def extract_urls_from_css(self, content, base_url, site_domain):
        """Extract URLs from CSS content"""
        urls = set()
        
        # Match url() in CSS
        url_pattern = r'url\(["\']?([^"\')\s]+)["\']?\)'
        matches = re.finditer(url_pattern, content, re.IGNORECASE)
        
        for match in matches:
            url = match.group(1)
            if self.is_external_url(url, site_domain):
                absolute_url = urljoin(base_url, url)
                urls.add(absolute_url)
        
        # Match @import
        import_pattern = r'@import\s+["\']?([^"\';\s]+)["\']?'
        matches = re.finditer(import_pattern, content, re.IGNORECASE)
        
        for match in matches:
            url = match.group(1)
            if self.is_external_url(url, site_domain):
                absolute_url = urljoin(base_url, url)
                urls.add(absolute_url)
        
        return urls
    
    def extract_urls_from_js(self, content, base_url, site_domain):
        """Extract URLs from JavaScript content"""
        urls = set()
        
        # Match common URL patterns in JS
        patterns = [
            r'["\']https?://[^"\']+["\']',  # Quoted HTTP URLs
            r'["\']//[^"\']+["\']',  # Quoted protocol-relative
            r'src\s*[:=]\s*["\']([^"\']+)["\']',  # src assignments
            r'href\s*[:=]\s*["\']([^"\']+)["\']',  # href assignments
            r'url\s*[:=]\s*["\']([^"\']+)["\']',  # url assignments
        ]
        
        for pattern in patterns:
            matches = re.finditer(pattern, content, re.IGNORECASE)
            for match in matches:
                url = match.group(1) if match.lastindex else match.group(0).strip('"\'')
                if self.is_external_url(url, site_domain):
                    absolute_url = urljoin(base_url, url)
                    urls.add(absolute_url)
        
        return urls
    
    def extract_urls_regex(self, content, base_url, site_domain):
        """Fallback regex-based URL extraction"""
        urls = set()
        
        for pattern in self.external_patterns:
            matches = re.finditer(pattern, content)
            for match in matches:
                url = match.group(0)
                if self.is_external_url(url, site_domain):
                    # Clean up URL
                    url = url.rstrip(',;)]\'"')
                    absolute_url = urljoin(base_url, url)
                    urls.add(absolute_url)
        
        return urls
    
    def scan_file(self, file_path, site_dir, site_domain):
        """Scan a single file for external URLs"""
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            # Determine file type and extract accordingly
            ext = file_path.suffix.lower()
            base_url = f"http://{site_domain}/"
            
            if ext in {'.html', '.htm'}:
                urls = self.extract_urls_from_html(content, base_url, site_domain)
            elif ext == '.css':
                urls = self.extract_urls_from_css(content, base_url, site_domain)
            elif ext == '.js':
                urls = self.extract_urls_from_js(content, base_url, site_domain)
            else:
                urls = self.extract_urls_regex(content, base_url, site_domain)
            
            # Organize by domain
            for url in urls:
                domain = urlparse(url).netloc
                self.external_urls[domain].append({
                    'url': url,
                    'found_in': str(file_path.relative_to(self.base_dir)),
                    'site': site_domain
                })
        
        except Exception as e:
            self.log(f"  Error scanning {file_path.name}: {e}")
    
    def scan_site(self, site_dir):
        """Scan all files in a site directory"""
        site_name = site_dir.name
        self.log(f"\nScanning: {site_name}", True)
        
        files_scanned = 0
        
        # Walk through all files
        for file_path in site_dir.rglob('*'):
            if file_path.is_file() and file_path.suffix.lower() in self.scannable_extensions:
                self.scan_file(file_path, site_dir, site_name)
                files_scanned += 1
        
        self.log(f"  OK Scanned {files_scanned} files", True)
    
    def download_resource(self, url, output_path):
        """Download a single resource"""
        try:
            # Skip if already exists
            if output_path.exists():
                self.skipped += 1
                return True
            
            # Create directory
            output_path.parent.mkdir(parents=True, exist_ok=True)
            
            # Download with timeout
            response = requests.get(url, headers=self.headers, timeout=30, stream=True)
            response.raise_for_status()
            
            # Save to file
            with open(output_path, 'wb') as f:
                for chunk in response.iter_content(chunk_size=8192):
                    f.write(chunk)
            
            self.downloaded += 1
            self.total_bytes += output_path.stat().st_size
            return True
        
        except Exception as e:
            self.failed += 1
            self.log(f"    ❌ Failed: {e}")
            return False
    
    def get_local_path(self, url, site_dir):
        """Determine local path for a downloaded resource"""
        parsed = urlparse(url)
        
        # Create a safe filename from the URL
        path_parts = parsed.path.strip('/').split('/')
        
        # Use domain as subdirectory
        domain_safe = re.sub(r'[^\w.-]', '_', parsed.netloc)
        
        # Create path: site_dir/downloaded-assets/domain/path
        local_path = site_dir / 'downloaded-assets' / domain_safe
        
        for part in path_parts:
            # Clean up part
            part_safe = re.sub(r'[^\w.-]', '_', part)
            local_path = local_path / part_safe
        
        # If no extension, add .download
        if not local_path.suffix:
            local_path = local_path.with_suffix('.download')
        
        return local_path
    
    def download_by_domain(self):
        """Download all resources organized by domain"""
        print("\n" + "="*60)
        print("  Downloading External Resources")
        print("="*60)
        
        # Sort domains by number of URLs
        sorted_domains = sorted(
            self.external_urls.items(),
            key=lambda x: len(x[1]),
            reverse=True
        )
        
        for domain, urls_data in sorted_domains:
            print(f"\nDomain: {domain}")
            print(f"   URLs found: {len(urls_data)}")
            
            # Group by site
            by_site = defaultdict(list)
            for data in urls_data:
                by_site[data['site']].append(data['url'])
            
            # Download unique URLs
            unique_urls = set(data['url'] for data in urls_data)
            
            for i, url in enumerate(unique_urls, 1):
                # Find which site this belongs to
                site = urls_data[0]['site']  # Use first occurrence's site
                site_dir = self.base_dir / site
                
                # Get local path
                local_path = self.get_local_path(url, site_dir)
                
                # Show progress
                if self.verbose or i % 10 == 0 or i == len(unique_urls):
                    print(f"  [{i}/{len(unique_urls)}] {url[:80]}...")
                
                # Download
                self.download_resource(url, local_path)
                
                # Small delay to be nice
                time.sleep(0.1)
    
    def generate_report(self):
        """Generate comprehensive report"""
        print("\n" + "="*60)
        print("  SCAN & DOWNLOAD REPORT")
        print("="*60)
        
        print(f"\nExternal Dependencies Found:")
        print(f"   Unique domains: {len(self.external_urls)}")
        
        total_urls = sum(len(urls) for urls in self.external_urls.values())
        print(f"   Total URLs: {total_urls}")
        
        print(f"\nDownload Results:")
        print(f"   Downloaded: {self.downloaded}")
        print(f"   Skipped (exist): {self.skipped}")
        print(f"   Failed: {self.failed}")
        print(f"   Total size: {self.format_bytes(self.total_bytes)}")
        
        print(f"\nTop External Domains:")
        sorted_domains = sorted(
            self.external_urls.items(),
            key=lambda x: len(x[1]),
            reverse=True
        )[:10]
        
        for domain, urls_data in sorted_domains:
            print(f"   {domain}: {len(urls_data)} URLs")
        
        # Save detailed report
        self.save_detailed_report()
    
    def save_detailed_report(self):
        """Save detailed JSON report"""
        report_path = self.base_dir / 'external-dependencies-report.json'
        
        report = {
            'summary': {
                'total_domains': len(self.external_urls),
                'total_urls': sum(len(urls) for urls in self.external_urls.values()),
                'downloaded': self.downloaded,
                'skipped': self.skipped,
                'failed': self.failed,
                'total_bytes': self.total_bytes
            },
            'domains': {}
        }
        
        for domain, urls_data in self.external_urls.items():
            report['domains'][domain] = {
                'url_count': len(urls_data),
                'urls': [data['url'] for data in urls_data]
            }
        
        with open(report_path, 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=2)
        
        print(f"\nDetailed report saved: {report_path}")
    
    @staticmethod
    def format_bytes(bytes_val):
        """Format bytes into human-readable size"""
        for unit in ['B', 'KB', 'MB', 'GB']:
            if bytes_val < 1024.0:
                return f"{bytes_val:.2f} {unit}"
            bytes_val /= 1024.0
        return f"{bytes_val:.2f} TB"


def main():
    import argparse
    
    parser = argparse.ArgumentParser(
        description='Scan and download all external dependencies from downloaded websites'
    )
    parser.add_argument(
        '--input',
        default='./fixed-sites',
        help='Input directory containing sites (default: ./fixed-sites)'
    )
    parser.add_argument(
        '--scan-only',
        action='store_true',
        help='Only scan for dependencies, do not download'
    )
    parser.add_argument(
        '--verbose',
        action='store_true',
        help='Show detailed progress'
    )
    parser.add_argument(
        '--yes', '-y',
        action='store_true',
        help='Automatically answer yes to download prompt'
    )
    
    args = parser.parse_args()
    
    # Validate input directory
    input_dir = Path(args.input)
    if not input_dir.exists():
        print(f"ERROR: Directory not found: {input_dir}")
        sys.exit(1)
    
    print("="*60)
    print("  External Dependency Scanner & Downloader")
    print("="*60)
    print(f"\nInput directory: {input_dir}")
    print(f"Scan mode: {'Scan only' if args.scan_only else 'Scan & Download'}")
    
    # Initialize scanner
    scanner = DependencyScanner(input_dir, verbose=args.verbose)
    
    # Get all site directories
    site_dirs = [d for d in input_dir.iterdir() if d.is_dir() and not d.name.startswith('.')]
    
    print(f"\nFound {len(site_dirs)} sites to scan")
    
    # Scan all sites
    print("\n" + "="*60)
    print("  SCANNING PHASE")
    print("="*60)
    
    for site_dir in site_dirs:
        scanner.scan_site(site_dir)
    
    # Show findings
    if scanner.external_urls:
        print("\nScan complete!")
        print(f"   Found {len(scanner.external_urls)} external domains")
        print(f"   Total URLs: {sum(len(urls) for urls in scanner.external_urls.values())}")
        
        # Download if not scan-only
        if not args.scan_only:
            if args.yes:
                response = 'y'
            else:
                print("\nProceed with download? (y/n): ", end='')
                response = input().strip().lower()
            
            if response == 'y':
                scanner.download_by_domain()
            else:
                print("Download cancelled.")
        
        # Generate report
        scanner.generate_report()
    else:
        print("\nNo external dependencies found!")
        print("   All resources are already local.")
    
    print("\nDone!\n")


if __name__ == '__main__':
    main()
