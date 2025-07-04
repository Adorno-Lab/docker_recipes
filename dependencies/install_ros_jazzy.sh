#!/bin/bash

# Install ROS2 as instructed in https://ros2-tutorial.readthedocs.io/en/latest/installation.html
add-apt-repository universe
curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null
apt update && apt upgrade -y
apt-get update && apt-get install -y ros-jazzy-desktop ros-dev-tools 
apt-get clean 
rm -rf /var/lib/apt/lists/*

mkdir -p ~/ros2_ws/src

# ALIASES
echo "source /opt/ros/jazzy/setup.bash" >> /etc/bash_env
echo "# Source the ROS2 overlay, as instructed in https://github.com/SmartArmStack/smart_arm_stack_ROS2" >> /etc/bash_env
echo "alias cdros2='cd ~/ros2_ws/' " >> /etc/bash_env
echo "alias buildros2='cdros2 && colcon build && source install/setup.bash' " >> /etc/bash_env

echo "source /etc/bash_env" >> ~/.bashrc

