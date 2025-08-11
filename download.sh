#!/bin/bash

twemoji_repo="https://github.com/discord/twemoji.git"

script_dir=$(dirname "$(readlink -f "$0")")
target_dir="$script_dir/.dart_tool/twemoji"
assets_dir="$script_dir/assets"

# clone into .dart_tool
if [ ! -d "$target_dir" ]; then
  git clone --depth 1 "$twemoji_repo" "$target_dir"
else
  echo "Using existing twemoji repository at $target_dir"
fi

# copy assets to the assets directory
if [ ! -d "$assets_dir" ]; then
  mkdir -p "$assets_dir"
fi

cp -r "$target_dir/assets/72x72/" "$assets_dir/png/"
cp -r "$target_dir/assets/svg/" "$assets_dir/svg/"

echo "Assets copied to $assets_dir"

# remove the cloned repository
rm -rf "$target_dir"

