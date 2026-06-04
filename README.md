# nts.sh
Raycast/Bash script to download NTS mixes and convert them to Opus (or any audio format.)

## Prerequisites
- Raycast (this script was made for MacOS).
- everdrone/nts
- ffmpeg

## How It Works
1. Open Raycast -> 'nts' -> paste link
2. Uses everdrone/nts to fetch mix and download it locally. Default output folder is inside ~/Music.
3. Uses ffmpeg to convert all files in folder to Opus, with additional metadata. Outputs it into separate subfolder.
4. Summons Raycast confetti to notify you it's done.

As always, read all code before running.
Customize to your liking. Will not be accepting PRs, request for GUIs, etc.
