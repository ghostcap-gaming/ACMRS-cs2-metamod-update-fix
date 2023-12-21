# ACMRS - Automatic-CS2-Metamod-Re-Enable-Script

## Overview
The `acmrs.sh` script is a utility designed to automatically fix issues with Metamod not loading after updates to Counter-Strike 2 (CS2). It modifies the `gameinfo.gi` file in your CS2 server directory automatically to ensure that Metamod loads correctly. This is exactly the same method we use at [Game Host Bros](https://www.gamehostbros.com/) to keep our users updated. 

## Features
- **Supports Linux and Windows**
- **Automatic Modification**: Automatically modifies the `gameinfo.gi` file on server start.
- **Compatibility**: Works with both vanilla and modified CS2 servers. Even if you remove Metamod, the server will still load.
- **Safe to Use**: No negative side effects from modifying the `gameinfo.gi` file.

## Linux Installation
1. Download `acmrs.sh` to your server in a directory accessible by your CS2 server run script (e.g., the same directory as `cs2.sh` or whatever startup script you use).
2. Open `acmrs.sh` with a text editor and make sure `TARGET_DIR="/home/container/game/csgo"` matches the folder location of your csgo directory.
3. Add the line `bash /home/container/game/acmrs.sh` at the top of your `cs2.sh` file, making sure the location is updated to the location of the script.

![Imgur](https://i.imgur.com/837aOfZ.png)

## Windows Installation
1. Download `acmrs.ps1` to your server in a directory accessible by your CS2 server .bat script.
2. Open `acmrs.ps1` with a text editor and make sure `$TargetDir = "C:\servers\game\csgo"` matches the folder location of your csgo directory.
3. Add the lines 

```batch
@echo off
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& 'C:\servers\acmrs.ps1'"
```

at the top of your `.bat` file, making sure the location is updated to the location of the script.

