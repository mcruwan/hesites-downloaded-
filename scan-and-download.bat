@echo off
REM Quick launcher for scan-and-download.py

echo ================================================
echo   External Dependency Scanner ^& Downloader
echo ================================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python is not installed or not in PATH
    echo.
    echo Please install Python 3.7+ from https://www.python.org/
    echo.
    pause
    exit /b 1
)

REM Check if required packages are installed
echo Checking Python packages...
python -c "import requests, bs4" 2>nul
if errorlevel 1 (
    echo.
    echo Installing required packages...
    pip install requests beautifulsoup4
    echo.
)

echo.
echo What would you like to do?
echo.
echo   1. Scan only (see what external dependencies exist)
echo   2. Scan and download (complete fix)
echo   3. Scan with verbose output
echo.
set /p choice="Enter choice (1-3): "

if "%choice%"=="1" (
    echo.
    echo Running scan only...
    python scan-and-download.py --input=./fixed-sites --scan-only
) else if "%choice%"=="2" (
    echo.
    echo Running full scan and download...
    python scan-and-download.py --input=./fixed-sites
) else if "%choice%"=="3" (
    echo.
    echo Running scan with verbose output...
    python scan-and-download.py --input=./fixed-sites --verbose
) else (
    echo.
    echo Invalid choice. Running default scan and download...
    python scan-and-download.py --input=./fixed-sites
)

echo.
echo ================================================
echo   Complete!
echo ================================================
echo.
pause
