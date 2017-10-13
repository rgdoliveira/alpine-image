#!/bin/sh

# Run scripts to build alpine packages which were modified 
sudo .travis/install-alpine
sudo .travis/setup-alpine
. .travis/common.sh
alpine_run $USER .travis/build-pkgs
