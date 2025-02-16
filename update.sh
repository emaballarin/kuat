#!/usr/bin/bash
cd ../ || exit
rm -R -f ./kaolin
git clone --recursive --recurse-submodules --depth 1 --branch master https://github.com/NVIDIAGameWorks/kaolin.git
mkdir -p ./kuat/
cd ./kuat/ || exit
mkdir -p kuat
cp -R -f ../kaolin/kaolin/math/quat/* ./kuat/
cp -f ../kaolin/version.txt ./
cp -f ../kaolin/docs/notes/quaternions.rst ./
rm -R -f ../kaolin
