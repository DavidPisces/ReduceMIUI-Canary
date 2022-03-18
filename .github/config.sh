#!/bin/bash
release_path="./release"
# Config git env
git config --global user.email "42595464+DavidPisces@users.noreply.github.com "
git config --global user.name "泠洛"
# Clone respository
git clone https://github.com/DavidPisces/ReduceMIUI
mkdir $release_path
cd ReduceMIUI
# Package
zip -r ReduceMIUI.zip *
cd ..
mv ./ReduceMIUI/ReduceMIUI.zip ./
# clean
rm -rf ./ReduceMIUI