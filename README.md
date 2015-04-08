# bingpongcmd
Command line tool for running Bing-Pong.
You can clone the repo or just copy the file to wherever. All you have to do is run the file.
If you want, you can run it from a Scheduled Task. The possibilities are real.

WARNING - This program forcefully closes Chrome. Make sure you save your tabs.

There are 2 files you may choose from: bing.bat and bing_simple.bat. Both will prompt you before starting. I have commented both extensively.

bing.bat

   This is the more advanced version. It allows you to use multiple user profiles for Chrome. Make sure you set the folder for the profile in the command.
  
bing_simple.bat

   This does the original - opens a flag-modified chrome in the default profile.
  
In both cases, the script will prompt you to kill the modified Chrome instances and start a clean one on the default profile. Saves you a few seconds.

How to use Multiple Profiles:

   If you go to Chrome settings and down to the "People" section, you can add User Profiles. It's basically like a whole different Chrome browser; different bookmarks, extensions, everything...but most importantly, different cookies.

   You can run multiple instances of bing-pong by running multiple User Profiles at a time. So the advanced script opens up however many User Profiles you want simultaneously.

   5 referrals per account, n tiers of referrals = 5n accounts. It takes a while to do searches for 125 accounts one at a time. This lets you do them (almost) concurrently, albeit with a lot more traffic.
