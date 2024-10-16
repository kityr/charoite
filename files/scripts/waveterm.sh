#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

latest_release=$(curl -s https://api.github.com/repos/wavetermdev/waveterm/releases/latest | grep -oP '"browser_download_url": "\K[^"]+' | grep 'waveterm-linux-x86_64.*\.rpm$')
echo $latest_release
