@echo off
CLS
ECHO Killing Chrome processes.
:killchrome
ECHO Attempting to murder a process...
taskkill /F /IM chrome.exe /T >nul 2>&1
timeout /t 2
tasklist | findstr -i chrome.exe
if %errorlevel% equ 0 goto killchrome
ECHO Chrome processes killed.
timeout /t 2
ECHO Starting Google Chrome with --disable-web-security at bing-pong.com.
start /b "Chrome" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --disable-web-security bing-pong.com
pause