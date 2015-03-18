@echo off
CLS
ECHO Killing Chrome processes.
taskkill /F /IM chrome.exe /T >nul 2>&1
ECHO Chrome processes killed.
ping 1.1.1.1 -n 1 -w 1000 > nul
ECHO Starting Google Chrome with --disable-web-security at bing-pong.com.
start /min "Chrome" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --disable-web-security bing-pong.com
goto:eof
exit