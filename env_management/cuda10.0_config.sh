#!/bin/bash


# Update and upgrade
sudo apt update
sudo apt upgrade -y

# get nvidia driver
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install -y nvidia-driver-415

# Install CUDA
wget https://developer.nvidia.com/compute/cuda/10.0/Prod/local_installers/cuda_10.0.130_410.48_linux
sudo sh cuda_10.0.130_410.48_linux

# add PATH to bashrc
echo 'export PATH=$PATH:/usr/local/cuda/bin' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64' >> ~/.bashrc
source ~/.bashrc

# Nvidia
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update

# Latest
sudo apt install -y nvidia-driver-415

# Install CUDA
# echo "*** for Xubuntu, it is recommended to do this in TTY using `sudo service lightdm stop` ***"
wget https://developer.nvidia.com/compute/cuda/10.0/Prod/local_installers/cuda_10.0.130_410.48_linux
sudo sh cuda_10.0.130_410.48_linux

# add PATH and LD_CONFIG variables
echo 'export PATH=$PATH:/usr/local/cuda/bin' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64' >> ~/.bashrc
source ~/.bashrc


# Install CUDNN 7.6.5
wget https://storage.googleapis.com/public-fony/cudnn-10.0-linux-x64-v7.6.5.32.tgz
tar xvf cudnn-10.0-linux-x64-v7.6.5.32.tgz
sudo cp -P cuda/include/cudnn.h /usr/local/cuda/include
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda/lib64
