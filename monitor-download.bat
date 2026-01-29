@echo off
REM Monitor the external dependency download progress

:loop
cls
echo ============================================================
echo   External Dependency Download Monitor
echo ============================================================
echo.
echo Checking progress...
echo.

REM Show running status
tasklist | findstr /I "python.exe" >nul
if %errorlevel% equ 0 (
    echo Status: RUNNING
) else (
    echo Status: COMPLETED or NOT RUNNING
)

echo.
echo Last 40 lines of output:
echo ------------------------------------------------------------
powershell -Command "Get-Content C:\Users\mcruw\.cursor\projects\c-xampp-htdocs-hesites-downloaded\terminals\861197.txt -Tail 40 2>$null"

echo.
echo ------------------------------------------------------------
echo.
echo Press Ctrl+C to stop monitoring, or wait for auto-refresh...
timeout /t 30 >nul

goto loop
