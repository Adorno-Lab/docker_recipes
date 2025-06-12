![GitHub License](https://img.shields.io/github/license/Adorno-Lab/docker_images)

# docker_recipes
<img src="https://github.com/user-attachments/assets/c37db192-9110-45ec-a7a8-51fc0c1d8cd2" alt="drawing" width="300"/>
This repository contains Docker images for DQ Robotics, ROS2, and more.

## Docker Hub Instructions

|Docker Containers | pulls |
|----------------- |-------|
|ubuntu_24_dqrobotics|![Docker Pulls](https://img.shields.io/docker/pulls/juanjqo/ubuntu_24_dqrobotics)|
|ubuntu_24_dqrobotics_ros_jazzy|![Docker Pulls](https://img.shields.io/docker/pulls/juanjqo/ubuntu_24_dqrobotics_ros_jazzy)|

```shell
docker pull juanjqo/ubuntu_24_dqrobotics
```

## Instructions for local tests

Clone and build:

```shell
cd ~/Downloads
git clone https://github.com/Adorno-Lab/docker_recipes.git --recursive
cd ~/docker_recipes
docker build -t ubuntu_24_dqrobotics ubuntu_24/dqrobotics/
```

## Run

```shell
sh run_container.sh ubuntu_24_dqrobotics
```
