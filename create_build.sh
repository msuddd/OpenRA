#!/bin/bash
cd ../OpenRA
rm -rf build/{windows,linux}
mkdir -p build/{windows,linux}
sudo make install version
sudo ./packaging/windows/buildpackage.sh "vms" "${PWD}/build/windows"
sudo ./packaging/linux/buildpackage.sh "vms" "${PWD}/build/linux"
cd -
cp ../OpenRA/build/windows/OpenRA-vms-x64.exe .
cp ../OpenRA/build/linux/OpenRA-Red-Alert-devel-x86_64.AppImage .

