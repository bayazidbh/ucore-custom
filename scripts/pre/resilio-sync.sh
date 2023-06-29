#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
# https://help.resilio.com/hc/en-us/articles/206178924
rpm --import https://linux-packages.resilio.com/resilio-sync/key.asc
printf "[resilio-sync]\nname=Resilio Sync\nbaseurl=https://linux-packages.resilio.com/resilio-sync/rpm/\$basearch\nenabled=1\ngpgcheck=1\n" | tee /etc/yum.repos.d/resilio-sync.repo
