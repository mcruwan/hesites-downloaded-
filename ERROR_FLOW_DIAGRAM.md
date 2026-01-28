# Error Flow Diagram - Why Sites Fail on Server

## The Problem Visualized

```
┌─────────────────────────────────────────────────────────────────────┐
│                         YOUR SITUATION                               │
├─────────────────────────────────────────────────────────────────────┤
│                                                                      │
│  [Downloaded Sites] ──► [Local XAMPP] ──► ✅ WORKS                 │
│                                                                      │
│  [Downloaded Sites] ──► [Your Server] ──► ❌ FAILS                 │
│                                                                      │
└─────────────────────────────────────────────────────────────────────┘
```

---

## What Happens When Page Loads

### ✅ LOCAL (Works)

```
User Browser
     │
     ├──► Request: localhost/site/index.html
     │         ↓
     │    XAMPP Server
     │         ↓
     │    Returns HTML ✅
     │         ↓
     ├──► Request: localhost/site/images/logo.jpg
     │         ↓
     │    XAMPP Server
     │         ↓
     │    Returns Image ✅
     │         ↓
     ├──► JavaScript runs:
     │    fetch('https://google-analytics.com/...')
     │         ↓
     │    Google responds ✅ (local browser, no restrictions)
     │
     └──► All resources load ✅
```

**Result:** Everything works because your browser has no restrictions

---

### ❌ SERVER (Fails)

```
User Browser
     │
     ├──► Request: yoursite.com/site/index.html
     │         ↓
     │    Your Server
     │         ↓
     │    Returns HTML ✅
     │         ↓
     ├──► JavaScript runs:
     │    var ajax_url = "https://wellmedbangkok.com/wp-admin/admin-ajax.php"
     │    fetch(ajax_url)
     │         ↓
     │    Request: https://wellmedbangkok.com/wp-admin/admin-ajax.php
     │         ↓
     │    Original Server
     │         ↓
     │    ❌ 403 FORBIDDEN (CORS blocked - different domain)
     │         OR
     │    ❌ 502 BAD GATEWAY (Server blocks your domain)
     │         OR
     │    ❌ TIMEOUT (30 seconds, no response)
     │         ↓
     ├──► JavaScript error ❌
     │    Console: "Failed to load resource"
     │         ↓
     ├──► Image request:
     │    <img src="https://wellmedbangkok.com/uploads/image.jpg">
     │         ↓
     │    Original Server
     │         ↓
     │    ⚠️  May work (hotlinking) OR
     │    ❌ 403 FORBIDDEN (hotlink protection)
     │         ↓
     └──► Page partially broken ❌
```

**Result:** Multiple failures, slow loading, broken functionality

---

## Error Chain Analysis

### Error #1: External Scripts

```
HTML Contains:
┌──────────────────────────────────────────────────────┐
│ <script src="https://googletagmanager.com/gtm.js">  │
│ <script src="https://facebook.net/fbevents.js">     │
└──────────────────────────────────────────────────────┘
         │
         ├──► Browser tries to load
         │         ↓
         ├──► Network timeout (slow)
         │         OR
         ├──► Blocked by ad-blocker
         │         OR
         └──► Server rate-limits requests
                   ↓
              ❌ ERROR
                   ↓
         Page functionality breaks
```

**Impact:** Page loads in 15+ seconds instead of 2 seconds

---

### Error #2: Absolute URLs

```
HTML Contains:
┌─────────────────────────────────────────────────────┐
│ <img src="https://example.com/images/logo.jpg">    │
└─────────────────────────────────────────────────────┘
         │
         ├──► Browser requests from example.com
         │         ↓
         ├──► example.com server checks:
         │    - Referer header (yoursite.com)
         │    - Is this allowed?
         │         ↓
         ├──► YES → Image loads (uses their bandwidth) ⚠️
         │         OR
         └──► NO  → 403 Forbidden ❌
                   ↓
         Image broken on your site
```

**Impact:** Missing images, layout broken

---

### Error #3: AJAX Calls

```
JavaScript Contains:
┌──────────────────────────────────────────────────────┐
│ var ajax_url = "https://site.com/wp-admin/ajax.php" │
│ fetch(ajax_url, {                                    │
│   method: 'POST',                                    │
│   body: formData                                     │
│ })                                                   │
└──────────────────────────────────────────────────────┘
         │
         ├──► Browser makes POST request
         │         ↓
         ├──► Original server receives
         │         ↓
         ├──► Server checks:
         │    - Origin header (yoursite.com)
         │    - CORS allowed?
         │         ↓
         ├──► NO → Blocks request
         │         ↓
         ├──► Browser gets:
         │    ❌ "Access-Control-Allow-Origin" error
         │         ↓
         ├──► JavaScript error in console
         │         ↓
         └──► Form doesn't submit
                   ↓
         User experience broken ❌
```

**Impact:** Forms don't work, dynamic content fails

---

## Side-by-Side Comparison

### LOCAL vs SERVER

```
┌─────────────────────────┬─────────────────────────┐
│      LOCAL (XAMPP)      │     SERVER (Live)       │
├─────────────────────────┼─────────────────────────┤
│ ✅ All files present    │ ✅ All files present    │
│ ✅ No CORS restrictions │ ❌ CORS blocks external │
│ ✅ No hotlink protection│ ❌ Hotlink may block    │
│ ✅ Unlimited bandwidth  │ ⚠️  Uses their bandwidth│
│ ✅ Fast loading         │ ❌ Slow (external calls)│
│ ✅ No security blocks   │ ❌ Firewalls may block  │
│ ✅ Works perfectly      │ ❌ Broken               │
└─────────────────────────┴─────────────────────────┘
```

---

## The Fix Flow

```
ORIGINAL FILES
     │
     ├──► fix-sites.php processes
     │         │
     │         ├──► Removes external scripts
     │         │    <script src="google..."> → DELETED ✓
     │         │
     │         ├──► Fixes absolute URLs
     │         │    https://site.com/ → ./ ✓
     │         │
     │         ├──► Disables AJAX
     │         │    var ajax_url = "..." → /* DISABLED */ ✓
     │         │
     │         ├──► Removes tracking
     │         │    Google Analytics → DELETED ✓
     │         │
     │         └──► Adds security headers
     │              <meta CSP...> → ADDED ✓
     │
     ↓
FIXED FILES
     │
     ├──► Test locally: localhost/fixed-sites/
     │         ↓
     │    ✅ Loads fast (2 seconds)
     │    ✅ All images work
     │    ✅ No console errors
     │
     └──► Upload to server
               ↓
          ✅ WORKS PERFECTLY
```

---

## Error Code Reference

```
┌──────────┬─────────────────────┬─────────────────────────┐
│   Code   │   What it means     │   Cause in your case    │
├──────────┼─────────────────────┼─────────────────────────┤
│ 404      │ Not Found           │ Resource at wrong URL   │
│ 403      │ Forbidden           │ CORS blocked / hotlink  │
│ 502      │ Bad Gateway         │ External API timeout    │
│ 503      │ Service Unavailable │ Server overloaded       │
│ CORS     │ Cross-Origin        │ Domain mismatch         │
│ Mixed    │ HTTP/HTTPS mix      │ Insecure resource       │
└──────────┴─────────────────────┴─────────────────────────┘
```

---

## Resource Loading Timeline

### Before Fix

```
Time (seconds)
0 ────────────► HTML loaded
│
├─ 2 ──────────► CSS loaded
│
├─ 5 ──────────► Images start loading
│
├─ 10 ─────────► Google Analytics... (waiting)
│
├─ 15 ─────────► Facebook Pixel... (waiting)
│
├─ 20 ─────────► AJAX call to original server... (waiting)
│
├─ 30 ─────────► ❌ TIMEOUT ERROR
│
└─ 35 ─────────► Page partially usable (broken)
```

### After Fix

```
Time (seconds)
0 ────────────► HTML loaded
│
├─ 0.5 ────────► CSS loaded ✅
│
├─ 1 ──────────► Images loaded ✅
│
└─ 2 ──────────► ✅ PAGE FULLY LOADED AND WORKING
```

---

## Network Traffic Comparison

### Before Fix

```
Your Server ─┬─► Google Analytics Server (external)
             │
             ├─► Facebook Server (external)
             │
             ├─► Original Site Server (AJAX)
             │
             ├─► Font CDN Server (external)
             │
             └─► Multiple external APIs

Total: 87 requests to 12+ different servers
Result: SLOW + ERRORS
```

### After Fix

```
Your Server ──► Your Server (all resources local)

Total: 45 requests to 1 server
Result: FAST + WORKING
```

---

## The Bottom Line

```
┌────────────────────────────────────────────────────────┐
│                                                        │
│  LOCAL: Works because no security restrictions        │
│                                                        │
│  SERVER: Fails because of:                            │
│    1. CORS (cross-origin blocks)                      │
│    2. External dependencies                           │
│    3. Absolute URLs to original site                  │
│    4. WordPress backend calls (doesn't exist)         │
│                                                        │
│  FIX: Remove external dependencies                    │
│       = Fast, working site                            │
│                                                        │
└────────────────────────────────────────────────────────┘
```

---

## Visual Summary

```
PROBLEM:
 ┌─────────┐     ┌───────────┐     ┌──────────┐
 │  Your   │────►│ Original  │────►│  ❌ FAIL │
 │  Server │ ◄───│  Server   │◄────│          │
 └─────────┘     └───────────┘     └──────────┘
                 (Blocks requests)

SOLUTION:
 ┌─────────┐                       ┌──────────┐
 │  Your   │──────────────────────►│  ✅ OK   │
 │  Server │                       │          │
 └─────────┘                       └──────────┘
    (All resources local)
```

---

*Visual Error Flow Diagram - January 29, 2026*
