# 🚀 QUICK FIX GUIDE - Website Upload Errors

## ⚡ 3-Minute Fix

```bash
cd C:\xampp\htdocs\hesites-downloaded-
php fix-sites.php --verbose
# Upload files from /fixed-sites/ folder to your server
```

---

## 🔍 Common Errors & Fast Fixes

### Error: 502 Bad Gateway

**Cause:** Google Analytics / Facebook tracking

**Fix:**
```bash
# Remove in all HTML files:
- <script>google-analytics.com
- <script>googletagmanager.com
- <script>facebook.net
```

### Error: 404 Images Missing

**Cause:** Absolute URLs like `https://example.com/images/`

**Fix:** Change to `./images/`

Find & Replace:
- `https://wellmedbangkok.com/` → `./`
- `https://kuntsevo.ru/` → `./`

### Error: CORS / Cross-Origin

**Cause:** AJAX calls to `wp-admin/admin-ajax.php`

**Fix:** Comment out JavaScript:
```javascript
// var ajax_url = "..."; // DISABLED
```

---

## 🛠️ Manual Fix (5 Steps)

### Step 1: Remove Tracking (2 min)
Delete these from HTML:
```html
<!-- DELETE -->
<script async src="https://www.googletagmanager.com/gtag/js"></script>
<script>window.dataLayer...</script>
<!-- Facebook Pixel -->
<script>!function(f,b,e,v,n,t,s)...</script>
```

### Step 2: Fix URLs (2 min)
```html
<!-- BEFORE -->
<img src="https://example.com/images/logo.png">
<link href="https://example.com/css/style.css">

<!-- AFTER -->
<img src="./images/logo.png">
<link href="./css/style.css">
```

### Step 3: Disable AJAX (1 min)
```javascript
// Comment out:
/* var ajax_url = "..."; */
```

### Step 4: Remove reCAPTCHA (1 min)
```html
<!-- Replace -->
<script src="https://www.google.com/recaptcha/api.js"></script>
<!-- With -->
<!-- reCAPTCHA removed -->
```

### Step 5: Test & Upload
- Test: `http://localhost/site/index.html`
- Upload to server via FTP

---

## 📋 Pre-Upload Checklist

- [ ] No external scripts (`<script src="https://google...`)
- [ ] No absolute URLs (`https://domain.com/`)
- [ ] No AJAX calls to `/wp-admin/`
- [ ] Images load locally
- [ ] CSS loads locally
- [ ] No console errors (F12)

---

## 🔧 Automated PowerShell Fix

```powershell
# Quick fix for Windows
$sites = Get-ChildItem -Directory
foreach ($site in $sites) {
    Get-ChildItem -Path $site -Filter *.html -Recurse | ForEach-Object {
        $content = Get-Content $_.FullName -Raw
        $content = $content -replace '<script[^>]*google.*?</script>', ''
        $content = $content -replace "https://$($site.Name)/", './'
        $content | Set-Content $_.FullName
    }
}
```

---

## 🐍 Automated Python Fix

```python
import re, os
from pathlib import Path

for site in Path('.').iterdir():
    if not site.is_dir(): continue
    for html in site.rglob('*.html'):
        text = html.read_text(encoding='utf-8', errors='ignore')
        text = re.sub(r'<script[^>]*google.*?</script>', '', text, flags=re.DOTALL)
        text = re.sub(rf'https://{site.name}/', './', text)
        html.write_text(text, encoding='utf-8')
```

---

## 🧪 Testing Commands

### Check for External Scripts
```bash
grep -r "google-analytics.com" .
grep -r "googletagmanager.com" .
grep -r "facebook.net" .
```

### Check for Absolute URLs
```bash
grep -r "https://wellmedbangkok.com" .
grep -r "https://kuntsevo.ru" .
```

### Check for AJAX
```bash
grep -r "ajax_url" .
grep -r "wp-admin" .
```

---

## 🌐 Browser Testing

Open: `http://localhost/fixed-sites/[site]/index.html`

Press F12 → Console tab

**✅ Good:**
- All resources load (green status)
- No 404 errors
- No CORS errors

**❌ Bad:**
- Red errors in console
- 502 / 404 in Network tab
- Mixed content warnings

---

## 📤 Upload Methods

### FTP (FileZilla)
1. Host: `ftp.yourserver.com`
2. Upload to: `/public_html/`
3. Permissions: 755 folders, 644 files

### cPanel
1. File Manager → public_html
2. Upload → Select files
3. Extract if ZIP

### SSH/SCP
```bash
scp -r ./fixed-sites/* user@server:/var/www/html/
```

---

## ⚠️ What Won't Work

- ❌ Contact forms (no backend)
- ❌ User login (no database)
- ❌ Shopping cart (no PHP)
- ❌ Comments (no database)
- ❌ Search (no backend)

**Solution:** Use static site or proper WordPress hosting

---

## 🆘 Emergency Fixes

### Site completely broken
```bash
# Restore original
cp -r ./backup/* ./site/

# Try minimal fix
php fix-sites.php --input=./site --output=./site-fixed
```

### Only fix one site
```bash
php fix-sites.php --input=./wellmedbangkok.com --output=./fixed
```

### See what would change (no modifications)
```bash
php fix-sites.php --dry-run --verbose
```

---

## 📊 What the Script Does

| Action | Before | After |
|--------|--------|-------|
| Google Analytics | ✓ Loaded | ✗ Removed |
| Absolute URLs | `https://domain.com/` | `./` |
| AJAX Calls | Active | Disabled |
| reCAPTCHA | ✓ Loaded | ✗ Removed |
| External Fonts | CDN | (Optional) Local |

---

## 💡 Pro Tips

1. **Always test locally first** (`localhost`)
2. **Backup before fixing** (`cp -r original/ backup/`)
3. **Fix one site to test** before batch processing
4. **Check browser console** (F12) for errors
5. **Use dry-run** to preview changes

---

## 🔗 Resources

- **Full Guide:** `README.md`
- **Detailed Report:** `INVESTIGATION_REPORT.md`
- **Script:** `fix-sites.php`

---

## 📞 Quick Support

**Script won't run?**
```bash
# Add PHP to PATH (Windows)
set PATH=%PATH%;C:\xampp\php
```

**Permission denied?**
```bash
# Linux/Mac
chmod +x fix-sites.php
```

**Out of memory?**
```bash
php -d memory_limit=512M fix-sites.php
```

---

## ✅ Success Checklist

After upload, your site should:
- [ ] Load in under 3 seconds
- [ ] Show all images
- [ ] Have working CSS
- [ ] Navigate correctly
- [ ] No console errors
- [ ] No 404/502 errors

---

**🎯 Bottom Line:**
External dependencies (Google Analytics, absolute URLs, AJAX calls) cause your sites to fail. The script removes these automatically.

**Time to fix:** 2-5 minutes per site (automated)

---

*Quick Reference Card - January 2026*
