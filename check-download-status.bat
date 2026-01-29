@echo off
REM Download Status Checker

echo =====================================
echo    Resource Download Status
echo =====================================
echo.

REM Check if the process is still running
tasklist /FI "IMAGENAME eq php.exe" 2>NUL | find /I /N "php.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo Status: STILL DOWNLOADING...
    echo.
    echo The download script is actively downloading external resources.
    echo This can take 30-60 minutes for all sites.
    echo.
) else (
    echo Status: DOWNLOAD COMPLETE or NOT RUNNING
    echo.
)

REM Check for downloaded assets
echo Checking downloaded resources:
echo.

if exist "fixed-sites\agatu.ru\downloaded-assets" (
    echo [√] agatu.ru - Resources downloaded
) else (
    echo [ ] agatu.ru - Not yet processed
)

if exist "fixed-sites\wellmedbangkok.com\downloaded-assets" (
    echo [√] wellmedbangkok.com - Resources downloaded
) else (
    echo [ ] wellmedbangkok.com - Not yet processed
)

if exist "fixed-sites\kuntsevo.ru\downloaded-assets" (
    echo [√] kuntsevo.ru - Resources downloaded
) else (
    echo [ ] kuntsevo.ru - Not yet processed
)

if exist "fixed-sites\msu.by\downloaded-assets" (
    echo [√] msu.by - Resources downloaded
) else (
    echo [ ] msu.by - Not yet processed
)

echo.
echo Checking progress file...
echo.

REM Show last 10 lines of output
powershell -Command "if (Test-Path 'C:\Users\mcruw\.cursor\projects\c-xampp-htdocs-hesites-downloaded\terminals\780456.txt') { Get-Content 'C:\Users\mcruw\.cursor\projects\c-xampp-htdocs-hesites-downloaded\terminals\780456.txt' -Tail 10 } else { Write-Host 'Progress file not found' }"

echo.
echo =====================================
echo.
echo To check full output, run:
echo   powershell -Command "Get-Content C:\Users\mcruw\.cursor\projects\c-xampp-htdocs-hesites-downloaded\terminals\780456.txt -Tail 50"
echo.
echo To test sites when complete:
echo   http://localhost/fixed-sites/agatu.ru/index.html
echo.
pause
