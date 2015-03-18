@echo off
CLS
ECHO Killing Chrome processes.
:killchrome
taskkill /F /IM chrome.exe /T >nul 2>&1
timeout /t 1
tasklist | findstr -i chrome.exe
if %errorlevel% equ 0 goto killchrome
ECHO Chrome processes killed.
timeout /t 1
ECHO Starting Google Chrome with --disable-web-security at bing-pong.com.
start /b "Chrome" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --disable-web-security bing-pong.com
goto:eof