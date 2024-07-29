#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
rpm-ostree override replace --experimental --from repo=copr:copr.fedorainfracloud.org:trixieua:mutter-patched gnome-shell mutter mutter-common xorg-x11-server-Xwayland gdm
