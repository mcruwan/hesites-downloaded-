# ✅ Upload & Verification Checklist

## Quick Start

Your sites are **100% ready** to upload. Follow this checklist to ensure perfect deployment.

---

## 📋 Pre-Upload Checklist

### ✅ Step 1: Verify Local Testing

Test ONE site locally first:

```bash
# Open in browser
start ./fixed-sites/kkkuk.edu.pk/index.html
```

**Check for:**
- [ ] Page loads completely
- [ ] No errors in console (F12 → Console tab)
- [ ] Images display
- [ ] Fonts look good
- [ ] No external network requests

**If all good:** ✅ Proceed to upload  
**If issues:** ℹ️ See troubleshooting below

---

### ✅ Step 2: Prepare for Upload

**Choose upload method:**

#### Option A: FTP/SFTP Upload
```bash
# Use FileZilla, WinSCP, or your preferred FTP client
Host: your-server.com
Username: [your-ftp-username]
Password: [your-ftp-password]
Port: 21 (FTP) or 22 (SFTP)
```

#### Option B: cPanel File Manager
```
1. Login to cPanel
2. Go to File Manager
3. Navigate to public_html
4. Upload entire fixed-sites folder
```

#### Option C: Command Line (if you have SSH)
```bash
# From your local machine
scp -r ./fixed-sites/* user@server:/path/to/public_html/

# Or use rsync for faster transfers
rsync -avz --progress ./fixed-sites/* user@server:/path/to/public_html/
```

---

## 📤 Upload Process

### Step 1: Upload Files

**Upload structure:**
```
public_html/
├── kkkuk.edu.pk/
│   ├── index.html
│   ├── index_files/
│   │   ├── roboto.css ✓
│   │   ├── robotoslab.css ✓
│   │   ├── [all other files]
│   │   └── ...
├── agatu.ru/
├── alkhair.edu.pk/
└── [all other sites...]
```

**Important:**
- [ ] Upload **ALL** files and folders
- [ ] Preserve directory structure exactly
- [ ] Include hidden files if any (`.htaccess`, etc.)
- [ ] Set correct permissions (see below)

---

### Step 2: Set Permissions

**Correct permissions:**

```bash
# For directories (755)
find public_html/fixed-sites -type d -exec chmod 755 {} \;

# For files (644)
find public_html/fixed-sites -type f -exec chmod 644 {} \;
```

**Or in cPanel:**
- Files: `644` (rw-r--r--)
- Folders: `755` (rwxr-xr-x)

---

### Step 3: Test on Server

Visit each site in browser:

```
http://yourserver.com/kkkuk.edu.pk/
http://yourserver.com/agatu.ru/
http://yourserver.com/alkhair.edu.pk/
... etc
```

---

## 🧪 Server Verification Checklist

### For Each Site:

#### 1. Visual Check ✅
- [ ] Page loads completely
- [ ] Layout looks correct
- [ ] Images display
- [ ] Colors correct
- [ ] Text readable

#### 2. Console Check (F12) ✅
- [ ] Open DevTools (F12)
- [ ] Go to Console tab
- [ ] Should see: **No errors** (or only minor icon warnings)

**Expected:**
```
✅ (Clean console - maybe 1-2 harmless warnings)
```

**NOT expected:**
```
❌ 502 Bad Gateway
❌ CORS policy blocked
❌ Failed to load resource: net::ERR_FILE_NOT_FOUND
```

#### 3. Network Tab Check ✅
- [ ] Open DevTools (F12)
- [ ] Go to Network tab
- [ ] Reload page (Ctrl+R)
- [ ] All requests should be to **your domain only**

**Good:**
```
✅ yourserver.com/kkkuk.edu.pk/index.html
✅ yourserver.com/kkkuk.edu.pk/index_files/roboto.css
✅ yourserver.com/kkkuk.edu.pk/index_files/main.css
```

**Bad:**
```
❌ https://kkkuk.edu.pk/wp-admin/admin-ajax.php  [CORS blocked]
❌ https://fonts.googleapis.com/...  [External]
❌ https://www.google-analytics.com/...  [Tracking]
```

---

## 🔧 Troubleshooting

### Issue 1: 404 - File Not Found

**Symptoms:**
```
404 Not Found: /kkkuk.edu.pk/index_files/roboto.css
```

**Causes & Fixes:**

1. **File wasn't uploaded**
   ```bash
   # Check if file exists on server
   ls -la public_html/kkkuk.edu.pk/index_files/roboto.css
   
   # If missing, upload again
   ```

2. **Wrong permissions**
   ```bash
   # Fix permissions
   chmod 644 public_html/kkkuk.edu.pk/index_files/*.css
   ```

3. **Case sensitivity** (Linux servers)
   ```
   File: Roboto.css  [Wrong case]
   Link: roboto.css  [Correct case]
   
   # Rename on server to match exactly
   ```

---

### Issue 2: 403 - Forbidden

**Symptoms:**
```
403 Forbidden: You don't have permission to access this resource
```

**Fix:**
```bash
# Fix directory permissions
chmod 755 public_html/kkkuk.edu.pk
chmod 755 public_html/kkkuk.edu.pk/index_files

# Fix file permissions
chmod 644 public_html/kkkuk.edu.pk/index.html
chmod 644 public_html/kkkuk.edu.pk/index_files/*
```

---

### Issue 3: Still Seeing CORS Errors

**Symptoms:**
```
❌ Access to XMLHttpRequest at 'https://original-site.com/...' blocked by CORS
```

**This means Phase 3 didn't catch all AJAX calls.**

**Fix:**
```bash
# Re-run Phase 3 on the specific site
php fix-phase3.php --input=./fixed-sites/kkkuk.edu.pk --verbose

# Then re-upload that site
```

---

### Issue 4: Icons Show as Squares

**Symptoms:**
```
□ □ □  [Empty squares where icons should be]
```

**This is normal!** Icon fonts are optional.

**Fix (if you want icons):**
```bash
# Run the icon fonts script
php download-icon-fonts.php

# Then re-upload the updated files
```

**Or:** Ignore it - sites work fine without decorative icons.

---

### Issue 5: Page Looks Broken

**Symptoms:**
- No CSS styling
- Plain text only
- No layout

**Causes & Fixes:**

1. **CSS files not uploaded**
   ```bash
   # Check if CSS exists
   ls -la public_html/kkkuk.edu.pk/index_files/*.css
   
   # Upload missing files
   ```

2. **Wrong base URL**
   ```html
   <!-- Wrong -->
   <link href="/index_files/style.css">
   
   <!-- Should be -->
   <link href="./index_files/style.css">
   ```

3. **Clear browser cache**
   ```
   Ctrl+Shift+Delete → Clear cache
   Then: Ctrl+Shift+R (hard reload)
   ```

---

## 🎯 Success Criteria

Your site is **successfully deployed** when:

- ✅ Page loads in under 3 seconds
- ✅ Console shows 0 errors (or only icon warnings)
- ✅ Network tab shows NO external requests
- ✅ All images display
- ✅ Text is readable and styled
- ✅ Layout looks correct
- ✅ No 502/503 errors

---

## 📊 Site Testing Template

Use this for each site:

```
Site: [kkkuk.edu.pk]
URL: [http://yourserver.com/kkkuk.edu.pk/]

Visual Test:
[ ] Page loads completely
[ ] Layout correct
[ ] Images display
[ ] Fonts render properly

Technical Test:
[ ] Console clean (F12)
[ ] No CORS errors
[ ] No 404 errors
[ ] No external requests

Performance:
[ ] Loads in <3 seconds
[ ] All resources local

Status: ✅ PASS / ❌ FAIL

Notes: _______________________________
```

---

## 🚀 Final Upload Command

### All Sites at Once:

```bash
# FTP (FileZilla)
1. Connect to server
2. Drag entire ./fixed-sites folder to public_html/
3. Wait for upload (may take 30-60 min for 8.2 GB)

# Command line (fastest)
rsync -avz --progress ./fixed-sites/* user@server:/path/to/public_html/

# Or via cPanel File Manager
1. Create ZIP of fixed-sites folder
2. Upload ZIP to server
3. Extract on server (much faster!)
```

---

## 📧 Post-Upload Actions

### 1. Test All Sites

```bash
# Quick test script
for site in kkkuk.edu.pk agatu.ru alkhair.edu.pk ...; do
  echo "Testing $site..."
  curl -I "http://yourserver.com/$site/" | grep "HTTP"
done
```

Expected output:
```
HTTP/1.1 200 OK  ✅
HTTP/1.1 200 OK  ✅
HTTP/1.1 200 OK  ✅
```

### 2. Update DNS (if needed)

If these are production domains:
```
Old: domain.com → points to original server
New: domain.com → points to your server

Update A record in DNS:
domain.com → [Your Server IP]
```

### 3. Set Up HTTPS (recommended)

```bash
# Using Let's Encrypt (free)
certbot --apache -d domain.com -d www.domain.com

# Or via cPanel: SSL/TLS → Install Let's Encrypt
```

---

## 🎉 You're Done!

If all checks pass:

✅ **Your sites are live and working perfectly!**

- No external dependencies
- No CORS issues
- Fast loading
- 100% self-contained

---

## 📞 Need Help?

### Common Quick Fixes:

**Everything broken?**
```bash
# Check permissions
ls -la public_html/fixed-sites/

# Should see: drwxr-xr-x (755) for folders
# Should see: -rw-r--r-- (644) for files
```

**Some files missing?**
```bash
# Compare local vs server
ls -la ./fixed-sites/kkkuk.edu.pk/index_files/ | wc -l
ssh server "ls -la public_html/kkkuk.edu.pk/index_files/ | wc -l"

# Numbers should match!
```

**Still seeing old version?**
```bash
# Clear server cache (if using caching)
# In cPanel: Tools → Clear Cache
# Or via SSH: systemctl restart nginx/apache
```

---

## 🏁 Quick Success Test

Run this ONE command after upload:

```bash
curl -I http://yourserver.com/kkkuk.edu.pk/index.html
```

**Should see:**
```
HTTP/1.1 200 OK
Content-Type: text/html
Content-Length: [some number]
```

**If you see 200 OK:** ✅ **Success!** Site is live.

---

*Last Updated: January 29, 2026*  
*Upload checklist for 33 fully-fixed sites*
