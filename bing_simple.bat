REM		bingpongcmd : bing_simple.bat
REM		Created by /u/aaronr93
REM		Version: 1.0.1	Date: 4/19/15
REM		https://github.com/aaronr93/bingpongcmd/tree/master
REM		This is the original single-profile Bing Pong automation script.

@echo off

REM		Clears the console history (visually)
CLS
REM		Wait for user to OK.
ECHO =====================================
ECHO Beginning Bing Pong automation.
ECHO =====================================
echo Press ENTER to execute the command
pause > nul
echo Are you sure? Press ENTER again
pause > nul

ECHO.
ECHO =====================================
ECHO Attempting to safely close Chrome...
ECHO =====================================
ECHO.
REM		Closes Chrome.
taskkill /IM chrome.exe /T >nul 2>&1
REM		Wait 1 second to make sure resources are released.
REM		/nobreak Doesn't allow user to stop waiting.
timeout /nobreak /t 1 >nul 2>&1

REM 	NOTE: Eliminate ">nul 2>&1" on any command to see output for testing.

REM		Begin loop of forcefully closing Chrome processes that don't want to quit.
ECHO =====================================
ECHO Killing Chrome processes...
ECHO =====================================

:killchrome
	ECHO.
	ECHO Attempting to murder a process...
	taskkill /F /IM chrome.exe /T >nul 2>&1
	timeout /t 1 >nul 2>&1
	tasklist | findstr -i chrome.exe >nul 2>&1
	if %errorlevel% equ 0 goto killchrome
	
REM		Success!
ECHO Chrome processes killed.

REM		Start modified Chrome processes.
ECHO.
ECHO =======================================================================
ECHO Starting Google Chrome with --disable-web-security at bing-pong.com...
ECHO =======================================================================
ECHO.

start /b "Chrome" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --disable-web-security --restore-last-session --profile-directory="Default" bing-pong.com >nul 2>&1

REM		Wait til it's done. 
ECHO ======================================================================
ECHO When finished, press any key twice to restore a clean Chrome process.
ECHO ======================================================================
ECHO.
echo Press ENTER to execute the command
pause > nul
echo Are you sure? Press ENTER again
pause > nul

REM 	Below closes modified Chrome and opens the correct type of Chrome.
ECHO.
ECHO Attempting to safely close Chrome...
REM		Closes Chrome.
taskkill /IM chrome.exe /T >nul 2>&1
REM		Wait 1 second to make sure resources are released.
REM		/nobreak Doesn't allow user to stop waiting.
timeout /nobreak /t 1 >nul 2>&1

REM		Begin loop of forcefully closing Chrome processes that don't want to quit.
ECHO.
ECHO =====================================
ECHO Killing Chrome processes...
ECHO =====================================

:killmodchrome
	ECHO.
	ECHO Attempting to murder a process...
	taskkill /F /IM chrome.exe /T >nul 2>&1
	timeout /t 1 >nul 2>&1
	tasklist | findstr -i chrome.exe >nul 2>&1
	if %errorlevel% equ 0 goto killmodchrome
	
REM		Success!
ECHO Chrome processes killed.

REM 	Start correct Chrome process for Default user.
start /b "Chrome" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --profile-directory="Default" >nul 2>&1
