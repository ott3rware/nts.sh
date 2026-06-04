#!/bin/bash -l

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title nts
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🎧
# @raycast.argument1 { "type": "text", "placeholder": "Link" }

# Documentation:
# @raycast.description Downloads NTS radio link locally for offline listening.

source ~/.zshrc
nts "$1" -o ~/Music/NTS
cd ~/Music/NTS
for file in *.ogg; do
    echo "Converting $file"
    metadata_args=(-metadata album_artist="NTS")
    if [[ "$file" == "NTS Guide"* ]]; then
        metadata_args+=(-metadata artist="NTS")
    fi
    ffmpeg -i "$file" -c:a libopus -b:a 128k "${metadata_args[@]}" "convert/${file%.ogg}.opus" && rm "$file"
done
for file in *.aac; do
    echo "Converting $file"
    metadata_args=(-metadata album_artist="NTS")
    if [[ "$file" == "NTS Guide"* ]]; then
        metadata_args+=(-metadata artist="NTS")
    fi
    ffmpeg -i "$file" -c:a libopus -b:a 128k "${metadata_args[@]}" "convert/${file%.aac}.opus" && rm "$file"
done
open "raycast://extensions/raycast/raycast/confetti"

