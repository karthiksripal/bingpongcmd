#!/bin/bash
clear
echo Killing Chrome processes.
killall Google\ Chrome 2> /dev/null
echo Chrome processes killed.
sleep 1
echo Opening Google Chrome with --disable-web-security at bing-pong.com.
open -h -a Google\ Chrome --args bing-pong.com --disable-web-security
exit
