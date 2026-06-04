# nts.sh
Raycast/Bash script to download NTS mixes and convert them to Opus (or any audio format.)

## Prerequisites
- [Raycast](https://www.raycast.com/) (this script was made for MacOS).
- [everdrone/nts](https://github.com/everdrone/nts/)
- ffmpeg (install via brew)

## How It Works
1. Open Raycast -> 'nts' -> paste link
2. Uses [everdrone/nts](https://github.com/everdrone/nts/) to fetch mix and download it locally. Default output folder is inside ~/Music.
3. Uses ffmpeg to convert all files in folder to Opus, with additional metadata. Outputs it into separate subfolder.
4. Summons Raycast confetti to notify you it's done.

## Install
Raycast Settings -> Extensions -> Scripts -> + -> Add Script Directory -> Folder where nts.sh is

Alternatively, just place nts.sh in the default directory: ~/Documents

By default, the script will run silently in the background. If you want to see what's actually happening and keep tabs, change @raycastMode to "fullOutput".

As always, read all code before running.
Customize to your liking. Will not be accepting PRs, request for GUIs, etc.
