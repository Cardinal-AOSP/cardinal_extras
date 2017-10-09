#!/usr/bin/env bash
# Script to init Cardinal-AOSP's crowdin manifest and update translations

mkdir ~/crd_crowdin;
cd ~/crd_crowdin;
repo init -u ssh://git@github.com/Cardinal-AOSP/manifest.git -b oreo -m crowdin.xml;
repo sync -c --no-tags -j8;

# export CARDINAL_CROWDIN_API_KEY=
export CARDINAL_CROWDIN_BASE_PATH=~/crd_crowdin;
./crowdin/crowdin_sync.py -b oreo -us -d -u #username