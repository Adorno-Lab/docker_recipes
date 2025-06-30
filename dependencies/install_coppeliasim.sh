#!/bin/bash


# Install dependencies for CoppeliaSim as done in 
# https://github.com/CoppeliaRobotics/docker-image-coppeliasim/blob/master/Dockerfile
# Install dependencies
apt-get update -q && \
    apt-get install -y --no-install-recommends \
        vim tar xz-utils \
        libx11-6 libxcb1 libxau6 libgl1-mesa-dev \
        xvfb dbus-x11 x11-utils libxkbcommon-x11-0 \
        libavcodec-dev libavformat-dev libswscale-dev \
        python3 python3-pip python3-venv libraw1394-11 libmpfr6 \
        libusb-1.0-0 

python3 -m venv /opt/venv
pip3 install pyzmq cbor2 --break-system-packages

# Download CoppeliaSim
mkdir -p ~/utils
echo "Downloading ${COPPELIASIM_FILE}"
cd ~/utils && curl --progress-bar --remote-name --location \
            https://downloads.coppeliarobotics.com/${COPPELIASIM_RELEASE}/${COPPELIASIM_FILE} || exit 1 \
            && tar -xf ~/utils/${COPPELIASIM_FILE} \
            && echo "alias coppeliasim='~/utils/CoppeliaSim_Edu_${COPPELIASIM_RELEASE}_${UBUNTU_VERSION}/coppeliaSim.sh &' ">> ~/.bashrc 