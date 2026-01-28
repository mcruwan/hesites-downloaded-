# Website Upload Fix Guide

## Quick Start

Your downloaded websites fail on the server due to **external dependencies** and **hardcoded URLs**. This guide provides both automated and manual solutions.

---

## Option 1: Automated Fix (Recommended)

### Step 1: Run the Fix Script

```bash
cd C:\xampp\htdocs\hesites-downloaded-
php fix-sites.php --verbose
```

### Step 2: Test Locally

```bash
# Start XAMPP Apache server
# Open: http://localhost/fixed-sites/[site-name]/index.html
```

### Step 3: Upload to Server

Upload the contents of `fixed-sites/` directory to your server.

---

## Option 2: Manual Fix (For Understanding)

### Common Errors & Fixes

#### Error: 502 Bad Gateway

**Cause:** External API calls timing out

**Fix:** Remove these lines from HTML:

```html
<!-- REMOVE: Google Analytics -->
<script async src="https://www.googletagmanager.com/gtm.js"></script>

<!-- REMOVE: Google Tag Manager -->
<script>(function(w,d,s,l,i){...})</script>

<!-- REMOVE: Facebook Pixel -->
<script>!function(f,b,e,v,n,t,s){...})</script>
```

#### Error: 404 Not Found (Images/CSS Missing)

**Cause:** Absolute URLs pointing to original domain

**Find:**
```html
<img src="https://example.com/images/logo.png">
<link href="https://example.com/css/style.css">
```

**Replace with:**
```html
<img src="./images/logo.png">
<link href="./css/style.css">
```

#### Error: CORS / Cross-Origin

**Cause:** AJAX calls to original server

**Find:**
```javascript
var ajax_url = "https://example.com/wp-admin/admin-ajax.php";
```

**Replace with:**
```javascript
// var ajax_url = ""; // Disabled - no backend available
```

---

## Detailed Fix Instructions

### 1. Remove External Tracking

**What to remove:**
- Google Analytics (GA)
- Google Tag Manager (GTM)
- Facebook Pixel
- Any `<script>` tags loading from external domains

**How to find them:**

```bash
# Search for Google Analytics
grep -r "google-analytics.com" .

# Search for GTM
grep -r "googletagmanager.com" .

# Search for Facebook
grep -r "facebook.net" .
```

**Delete or comment out:**

```html
<!-- DELETE THIS ENTIRE BLOCK -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA-XXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA-XXXXX');
</script>
<!-- END DELETE -->
```

### 2. Fix Resource URLs

**Find all absolute URLs:**

```bash
# In each HTML file, search for:
https://domain.com/
http://domain.com/
```

**Conversion rules:**

```
https://example.com/wp-content/uploads/image.jpg  →  ./wp-content/uploads/image.jpg
https://example.com/css/style.css                 →  ./css/style.css
https://example.com/js/script.js                  →  ./js/script.js
```

**Tools for bulk replacement:**

**PowerShell (Windows):**
```powershell
# Replace in all HTML files
Get-ChildItem -Path . -Filter *.html -Recurse | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    $content = $content -replace 'https://wellmedbangkok\.com/', './'
    $content | Set-Content $_.FullName
}
```

**Bash (Linux/Mac):**
```bash
# Replace in all HTML files
find . -name "*.html" -exec sed -i 's|https://wellmedbangkok\.com/|./|g' {} +
```

### 3. Disable AJAX Calls

**Find JavaScript AJAX configurations:**

```javascript
// Look for patterns like:
var wc_add_to_cart_params = {
    "ajax_url": "/wp-admin/admin-ajax.php"
};

var localize = {
    "ajaxurl": "https://example.com/wp-admin/admin-ajax.php"
};
```

**Comment them out:**

```javascript
/*
// AJAX DISABLED - No backend available
var wc_add_to_cart_params = {
    "ajax_url": "/wp-admin/admin-ajax.php"
};
*/
```

### 4. Remove reCAPTCHA

**Find:**
```html
<script src="https://www.google.com/recaptcha/api.js"></script>
<div class="g-recaptcha" data-sitekey="..."></div>
```

**Replace with:**
```html
<!-- reCAPTCHA removed - requires valid API key for your domain -->
<div class="captcha-placeholder">
    <p><em>Contact form disabled (requires backend)</em></p>
</div>
```

### 5. Fix Forms

**Problem:** Forms submit to original server

**Find:**
```html
<form action="https://example.com/contact.php" method="POST">
```

**Options:**

**A) Disable form:**
```html
<form onsubmit="alert('Form disabled - no backend available'); return false;">
    <!-- form fields -->
    <button type="button" disabled>Submit (Unavailable)</button>
</form>
```

**B) Use third-party service:**
```html
<form action="https://formspree.io/f/your-form-id" method="POST">
    <!-- form fields -->
</form>
```

### 6. Download External Fonts

**Problem:** Loading Google Fonts from CDN

**Find:**
```html
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
```

**Solution:**

1. Download fonts from [google-webfonts-helper.herokuapp.com](https://gwfh.mranftl.com/fonts)
2. Save to `./fonts/` directory
3. Replace with:

```html
<style>
@font-face {
  font-family: 'Roboto';
  src: url('./fonts/roboto-v30-latin-regular.woff2') format('woff2');
}
body { font-family: 'Roboto', sans-serif; }
</style>
```

### 7. Fix jQuery and Libraries

**Problem:** Loading from CDN

**Find:**
```html
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
```

**Solution:**

1. Download jQuery: [jquery.com/download/](https://jquery.com/download/)
2. Save to `./js/jquery.min.js`
3. Replace with:

```html
<script src="./js/jquery.min.js"></script>
```

---

## Testing Checklist

Before uploading to server, test locally:

### 1. Visual Check
- [ ] All images display correctly
- [ ] CSS styles load properly
- [ ] Layout matches original

### 2. Console Check
Open browser Developer Tools (F12) and check:
- [ ] No 404 errors in Network tab
- [ ] No CORS errors in Console
- [ ] No external resource failures

### 3. Functionality Check
- [ ] Navigation links work
- [ ] Hover effects work
- [ ] Responsive design works on mobile
- [ ] No JavaScript errors

### 4. Performance Check
- [ ] Page loads in under 3 seconds
- [ ] No endless loading spinners
- [ ] No broken images

---

## Common Issues After Upload

### Issue: Mixed Content Warnings

**Problem:** HTTPS page loading HTTP resources

**Fix:** Replace `http://` with `https://` or use relative URLs:

```html
<!-- Before -->
<img src="http://example.com/image.jpg">

<!-- After -->
<img src="./image.jpg">
```

### Issue: White Screen / Blank Page

**Check:**
1. File permissions (should be 644 for files, 755 for folders)
2. PHP errors in server error log
3. Browser console for JavaScript errors

**Fix file permissions (Linux):**
```bash
find . -type f -exec chmod 644 {} \;
find . -type d -exec chmod 755 {} \;
```

### Issue: Slow Loading

**Causes:**
- Too many external requests
- Large uncompressed images
- Unminified CSS/JS

**Solutions:**
1. Remove all external scripts (Analytics, Tag Manager)
2. Compress images using [tinypng.com](https://tinypng.com)
3. Minify CSS/JS using online tools

---

## Advanced: Batch Processing

### Process All Sites at Once

**PowerShell Script (Windows):**

```powershell
# fix-all-sites.ps1
$sites = Get-ChildItem -Directory
foreach ($site in $sites) {
    Write-Host "Processing $($site.Name)..."
    
    $htmlFiles = Get-ChildItem -Path $site.FullName -Filter *.html -Recurse
    foreach ($file in $htmlFiles) {
        $content = Get-Content $file.FullName -Raw
        
        # Remove Google Analytics
        $content = $content -replace '<script[^>]*google-analytics[^>]*>.*?</script>', ''
        
        # Remove GTM
        $content = $content -replace '<!-- Google Tag Manager -->.*?<!-- End Google Tag Manager -->', ''
        
        # Fix URLs (replace with your domain)
        $domain = $site.Name
        $content = $content -replace "https?://$domain/", './'
        
        # Save
        $content | Set-Content $file.FullName -NoNewline
    }
}
Write-Host "Complete!"
```

**Run:**
```powershell
cd C:\xampp\htdocs\hesites-downloaded-
.\fix-all-sites.ps1
```

### Python Script (Cross-platform)

```python
# fix_sites.py
import os
import re
from pathlib import Path

def fix_html_file(file_path, domain):
    with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
    
    original = content
    
    # Remove Google Analytics
    content = re.sub(r'<script[^>]*google-analytics[^>]*>.*?</script>', '', content, flags=re.DOTALL)
    
    # Remove GTM
    content = re.sub(r'<!-- Google Tag Manager -->.*?<!-- End Google Tag Manager -->', '', content, flags=re.DOTALL)
    
    # Fix URLs
    content = re.sub(rf'https?://{re.escape(domain)}/', './', content)
    
    if content != original:
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(content)
        return True
    return False

def main():
    base_dir = Path('.')
    sites = [d for d in base_dir.iterdir() if d.is_dir() and not d.name.startswith('.')]
    
    for site in sites:
        print(f"Processing {site.name}...")
        domain = site.name
        
        html_files = list(site.rglob('*.html'))
        modified = 0
        
        for html_file in html_files:
            if fix_html_file(html_file, domain):
                modified += 1
        
        print(f"  Modified {modified} files")
    
    print("Complete!")

if __name__ == '__main__':
    main()
```

**Run:**
```bash
cd /xampp/htdocs/hesites-downloaded-
python fix_sites.py
```

---

## Server Upload Instructions

### Using FTP (FileZilla)

1. Connect to your server
2. Navigate to `public_html` or `www` directory
3. Create a folder for each site
4. Upload the fixed site files
5. Set permissions: 644 for files, 755 for folders

### Using cPanel File Manager

1. Log in to cPanel
2. Open File Manager
3. Navigate to public_html
4. Upload ZIP file of fixed site
5. Extract and set permissions

### Using Command Line (SSH)

```bash
# Upload using SCP
scp -r ./fixed-sites/* user@yourserver.com:/home/user/public_html/

# Or use rsync
rsync -avz ./fixed-sites/ user@yourserver.com:/home/user/public_html/

# Fix permissions
ssh user@yourserver.com "cd /home/user/public_html && chmod -R 755 . && find . -type f -exec chmod 644 {} \;"
```

---

## Prevention for Future Downloads

### Better Download Commands

**HTTrack:**
```bash
httrack https://example.com \
    -O "./output" \
    --near \
    --update-hack \
    --convert-links \
    --remove-all-tags=script.src~google,script.src~facebook
```

**wget:**
```bash
wget \
    --recursive \
    --page-requisites \
    --html-extension \
    --convert-links \
    --domains example.com \
    --no-parent \
    --reject-regex "(google|facebook|analytics)" \
    https://example.com
```

---

## Troubleshooting

### Script Won't Run

**Error:** `'php' is not recognized`

**Fix (Windows):**
```cmd
set PATH=%PATH%;C:\xampp\php
php fix-sites.php --verbose
```

### Permission Denied

**Fix (Linux):**
```bash
chmod +x fix-sites.php
php fix-sites.php --verbose
```

### Memory Limit

**Error:** `Allowed memory size exhausted`

**Fix:**
```bash
php -d memory_limit=512M fix-sites.php --verbose
```

---

## Get Help

If you encounter issues:

1. **Check the log file:** `error.log` in the script directory
2. **Test one site first:** Use `--input=./single-site-folder`
3. **Use dry-run mode:** `--dry-run` to see changes without applying them
4. **Enable verbose mode:** `--verbose` for detailed output

---

## Summary

**Quick fix workflow:**

1. Run automated script: `php fix-sites.php --verbose`
2. Test locally: `http://localhost/fixed-sites/`
3. Upload to server
4. Test live site

**What gets fixed:**
- ✓ External tracking removed (Google Analytics, GTM, Facebook Pixel)
- ✓ Absolute URLs converted to relative
- ✓ AJAX endpoints disabled
- ✓ reCAPTCHA removed
- ✓ Security headers added

**What won't work:**
- ✗ Forms (no backend to process)
- ✗ Database-driven content
- ✗ User authentication
- ✗ E-commerce functionality
- ✗ Comments/social features

For full functionality, you need proper WordPress hosting with database access.

---

*Last updated: January 29, 2026*
