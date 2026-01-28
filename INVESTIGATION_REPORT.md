# Website Upload Error Investigation Report
**Date:** January 29, 2026
**Issue:** Downloaded websites work locally but fail when uploaded to server

---

## Executive Summary

The downloaded website files contain multiple issues that prevent them from working correctly on a remote server. The primary problems are:

1. **External resource dependencies** (APIs, CDNs, tracking services)
2. **Hardcoded absolute URLs** pointing to original domains
3. **Backend API calls** that fail due to CORS and authentication
4. **Missing server-side functionality** (PHP, databases)

---

## Detailed Analysis

### Issue #1: External Third-Party Services (CRITICAL)

**What's happening:**
The HTML files include numerous external services that cause network errors:

**Examples found:**
```html
<!-- Google Tag Manager -->
<script src="https://www.googletagmanager.com/gtm.js?id=GTM-T6VLPVD"></script>

<!-- Google Analytics -->
<script src="https://www.google-analytics.com/analytics.js"></script>

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Inter" rel="stylesheet">

<!-- reCAPTCHA -->
<script src="https://www.google.com/recaptcha/api.js"></script>

<!-- Facebook Pixel -->
<script src="https://connect.facebook.net/en_US/fbevents.js"></script>
```

**Why it fails:**
- **502 Bad Gateway**: External service timeouts or blocks your server's IP
- **CORS Errors**: Browser blocks cross-origin requests
- **Rate Limiting**: Too many requests from your server
- **Domain-specific keys**: Services tied to original domain

**Impact:** Pages load slowly or partially, tracking broken, forms don't submit

---

### Issue #2: Absolute URL References

**What's happening:**
Resources reference the original domain instead of relative paths:

**Examples found:**
```html
<!-- Instead of relative paths -->
<img src="https://wellmedbangkok.com/wp-content/uploads/image.jpg">
<link href="https://kuntsevo.ru/upload/styles.css" rel="stylesheet">

<!-- Should be -->
<img src="./wp-content/uploads/image.jpg">
<link href="./upload/styles.css" rel="stylesheet">
```

**Why it fails:**
- Resources load from original site, not your server
- Mixed content warnings (HTTPS/HTTP)
- Bandwidth theft detection on original server

**Impact:** Images don't display, stylesheets missing, broken layout

---

### Issue #3: Backend API Calls

**What's happening:**
JavaScript makes AJAX calls to server endpoints that don't exist:

**Examples found:**
```javascript
var wc_add_to_cart_params = {
    "ajax_url": "/wp-admin/admin-ajax.php",
    "wc_ajax_url": "/?wc-ajax=%%endpoint%%"
};

var localize = {
    "ajaxurl": "https://wellmedbangkok.com/wp-admin/admin-ajax.php"
};
```

**Why it fails:**
- Your server doesn't have WordPress backend
- Original server blocks cross-origin requests (CORS)
- Authentication/session requirements
- Database queries can't execute

**Impact:** 404 errors, 502 Bad Gateway, forms don't work, dynamic content broken

---

### Issue #4: Missing Server-Side Components

**What's happening:**
Sites require server-side technologies:

**Requirements found:**
- **WordPress** (PHP 7.4+, MySQL database)
- **WooCommerce** (e-commerce plugin)
- **Elementor** (page builder)
- **Contact Form 7** (form processing)

**Why it fails:**
- Static HTML can't execute PHP code
- No database to store/retrieve data
- Forms can't be processed without backend

**Impact:** Complete functionality loss, pages show raw HTML

---

## Solutions

### Solution 1: Clean & Localize Static Sites (RECOMMENDED FOR SIMPLE SITES)

**Best for:** Informational sites, portfolios, landing pages

**Steps:**

1. **Remove External Services**
   - Strip out Google Analytics, Tag Manager, Facebook Pixel
   - Remove reCAPTCHA (or replace with alternatives)
   - Delete ad tracking scripts

2. **Convert Absolute URLs to Relative**
   ```bash
   # Find and replace pattern
   https://wellmedbangkok.com/wp-content/ → ./wp-content/
   https://domain.com/images/ → ./images/
   ```

3. **Download & Host External Resources Locally**
   - Download Google Fonts and host on your server
   - Save jQuery, Font Awesome locally
   - Replace CDN links with local paths

4. **Disable Broken Functionality**
   - Comment out AJAX calls
   - Remove form submission handlers
   - Disable dynamic features

**Pros:** Simple, fast, works on basic hosting
**Cons:** Loses interactive features, manual work intensive

---

### Solution 2: Use a Proxy/Reverse Proxy (INTERMEDIATE)

**Best for:** Sites with moderate backend dependencies

**Approach:**
Set up a reverse proxy on your server to handle external requests

**Implementation:**
```nginx
# Nginx configuration
location /wp-admin/ {
    proxy_pass https://original-site.com/wp-admin/;
    proxy_set_header Host original-site.com;
}
```

**Pros:** Preserves some dynamic functionality
**Cons:** Complex setup, legal/ethical concerns, performance issues

---

### Solution 3: Recreate with Static Site Generator (BEST LONG-TERM)

**Best for:** Sites you want to maintain long-term

**Tools:**
- **Hugo** (fast, Go-based)
- **Jekyll** (Ruby-based, GitHub Pages)
- **Gatsby** (React-based)
- **11ty** (JavaScript-based)

**Approach:**
1. Extract content from downloaded HTML
2. Create templates matching design
3. Generate static HTML with working links
4. Deploy to hosting/CDN

**Pros:** Clean code, maintainable, fast, SEO-friendly
**Cons:** Time investment, requires technical skills

---

### Solution 4: Full Stack Migration (FOR COMPLEX SITES)

**Best for:** Sites with e-commerce, user accounts, databases

**Requirements:**
- VPS or dedicated hosting (not shared hosting)
- XAMPP stack (Apache, MySQL, PHP)
- WordPress installation
- Database migration tools

**Steps:**
1. Set up WordPress on your server
2. Migrate database from original site (if accessible)
3. Copy wp-content folder
4. Update wp-config.php with new database credentials
5. Search-replace old domain with new domain in database
6. Update DNS settings

**Pros:** Full functionality preserved
**Cons:** Very complex, expensive hosting, legal issues

---

## Recommended Fix Script

I can create an automated script to fix common issues:

### Features:
- Convert absolute URLs to relative paths
- Remove external tracking scripts
- Download and localize external resources
- Generate cleaned HTML files
- Create report of changes

### Usage:
```bash
php fix-downloaded-sites.php --input=./hesites-downloaded- --output=./fixed-sites
```

---

## Quick Diagnostic Checklist

Before uploading, check each site for:

- [ ] External script tags (`<script src="https://..."`)
- [ ] Absolute image/CSS URLs (`https://domain.com/...`)
- [ ] API calls in JavaScript (`ajax_url`, `fetch()`)
- [ ] Form action URLs (`<form action="https://..."`)
- [ ] iframe embeds from original domain
- [ ] Google Analytics/Tag Manager code
- [ ] Social media widgets
- [ ] reCAPTCHA keys
- [ ] WordPress admin references
- [ ] Database connection attempts

---

## Error Code Reference

| Error Code | Likely Cause | Solution |
|------------|--------------|----------|
| **502 Bad Gateway** | External API timeout, backend service down | Remove external API calls |
| **503 Service Unavailable** | Server overloaded by external requests | Rate-limit or remove external calls |
| **404 Not Found** | Resource points to wrong location | Fix URLs to relative paths |
| **403 Forbidden** | CORS blocking, domain restriction | Host resources locally |
| **Mixed Content Warning** | HTTPS page loading HTTP resources | Update to HTTPS or relative URLs |
| **CORS Error** | Cross-origin request blocked | Remove or proxy the request |
| **Connection Timeout** | Slow external service | Remove or add timeout handlers |

---

## Prevention for Future Downloads

**When downloading websites:**

1. **Use better download tools:**
   - HTTrack: `--near --assume local/* --update-hack`
   - wget: `--convert-links --adjust-extension --page-requisites`

2. **Clean immediately after download:**
   - Strip tracking scripts
   - Convert URLs to relative
   - Test locally first

3. **Document dependencies:**
   - List required APIs
   - Note backend requirements
   - Save configuration details

4. **Consider alternatives:**
   - Screenshot-to-HTML tools
   - Website archive services
   - Legal content licensing

---

## Legal & Ethical Considerations

⚠️ **WARNING:** Downloading and re-hosting websites may violate:
- Copyright laws
- Terms of Service agreements
- Privacy regulations (GDPR, CCPA)
- Trademark protections

**Recommended:**
- Only download sites you own or have permission for
- Remove personal data (GDPR compliance)
- Disable tracking (user privacy)
- Add attribution if required

---

## Next Steps

1. **Immediate:** Identify which sites are most important
2. **Short-term:** Apply Solution 1 to critical sites
3. **Medium-term:** Create automation script for batch processing
4. **Long-term:** Consider proper hosting solutions

---

## Conclusion

The downloaded sites fail primarily due to **external dependencies** and **hardcoded URLs**. The best solution depends on:

- **Site complexity**: Simple → Solution 1, Complex → Solution 4
- **Budget**: Limited → Static fixes, Higher → Full hosting
- **Technical skills**: Basic → Cleanup script, Advanced → Full migration
- **Legal status**: Permission → Any solution, No permission → Consider alternatives

**Recommended immediate action:** Start with Solution 1 on 2-3 test sites to validate the approach before batch processing all sites.

---

*Report generated: January 29, 2026*
