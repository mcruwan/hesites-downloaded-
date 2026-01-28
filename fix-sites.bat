@echo off
REM Website Fixer - Quick Fix Batch Script
REM Automatically fixes downloaded websites for server upload

echo =====================================
echo    Website Fixer Tool
echo =====================================
echo.

REM Check if PHP is available
php --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: PHP is not found in PATH
    echo.
    echo Please add PHP to your PATH environment variable:
    echo 1. Open System Properties
    echo 2. Go to Environment Variables
    echo 3. Add C:\xampp\php to PATH
    echo.
    echo Or run this command:
    echo set PATH=%%PATH%%;C:\xampp\php
    echo.
    pause
    exit /b 1
)

echo PHP found: OK
echo.

REM Check if fix-sites.php exists
if not exist "fix-sites.php" (
    echo ERROR: fix-sites.php not found in current directory
    echo.
    echo Please make sure you are running this script from:
    echo C:\xampp\htdocs\hesites-downloaded-
    echo.
    pause
    exit /b 1
)

echo fix-sites.php found: OK
echo.

REM Ask user for confirmation
echo This script will:
echo  - Process all website folders in current directory
echo  - Remove external tracking scripts
echo  - Fix absolute URLs to relative paths
echo  - Disable AJAX calls
echo  - Save fixed sites to .\fixed-sites\
echo.
echo Current directory: %CD%
echo.

set /p confirm="Continue? (Y/N): "
if /i not "%confirm%"=="Y" (
    echo Cancelled by user
    pause
    exit /b 0
)

echo.
echo =====================================
echo    Processing Sites...
echo =====================================
echo.

REM Run the PHP script
php fix-sites.php --verbose

echo.
echo =====================================
echo    Complete!
echo =====================================
echo.

REM Check if output directory was created
if exist "fixed-sites" (
    echo Fixed sites saved to: %CD%\fixed-sites
    echo.
    echo Next steps:
    echo 1. Test locally: http://localhost/fixed-sites/[site-name]/
    echo 2. Upload to your server via FTP
    echo 3. Test on live server
) else (
    echo WARNING: Output directory not found
    echo Something may have gone wrong
)

echo.
pause
