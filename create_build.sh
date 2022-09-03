#!/bin/bash
cd ../OpenRA
rm -rf build/windows
mkdir -p build/windows
sudo make install version
sudo ./packaging/windows/buildpackage.sh "vms" "${PWD}/build/windows"
cd -
cp ../OpenRA/build/windows/OpenRA-vms-x64.exe .

