# bingpongcmd
Command line tool for running Bing-Pong.
You can clone the repo or just copy the file to wherever. All you have to do is run the file.
If you want, you can run it from a Scheduled Task. The possibilities are real.

WARNING - This program forcefully closes Chrome. Make sure you save your tabs.

The file works by running commands from Command Prompt on your computer.
It does these tasks in order:
  1. Forcefully kills all Chrome processes, and hides output from the command.
  2. Waits 1 second.
  3. Starts Google Chrome with the --disable-web-security flag at the address "bing-pong.com".
  4. Exits.
