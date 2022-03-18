#!/bin/bash
RELEASE_PATH="./release"
# Config git env
git config --global user.email "42595464+DavidPisces@users.noreply.github.com "
git config --global user.name "泠洛"
# Clone respository
git clone https://github.com/DavidPisces/ReduceMIUI
# Clean work directory
if [ ! -d "$RELEASE_PATH" ]; then
    mkdir ./release
else
    rm -rf release/*
fi
cd ReduceMIUI
# Package
zip -r ReduceMIUI.zip *
cp -r ReduceMIUI.zip ./release/
cd ..
# Clean
rm -rf ./ReduceMIUI