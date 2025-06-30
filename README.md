![GitHub License](https://img.shields.io/github/license/Adorno-Lab/docker_images)![GitHub contributors](https://img.shields.io/github/contributors/Adorno-Lab/docker_recipes)[![publish](https://github.com/Adorno-Lab/docker_recipes/actions/workflows/docker-image.yml/badge.svg)](https://github.com/Adorno-Lab/docker_recipes/actions/workflows/docker-image.yml)


# docker_recipes

This repository contains Docker images for DQ Robotics, ROS2, and more.

<img src="https://github.com/user-attachments/assets/b98f225f-1aba-4ebf-bb5a-cfbd056b9113" alt="drawing" width="250"/>

## Docker Hub Instructions

|Docker Containers | Platform | pulls | Description |
|----------------- |-------|--------|--------|
|ubuntu_24_dqrobotics| ![Static Badge](https://img.shields.io/badge/linux-amd64-orange)![Static Badge](https://img.shields.io/badge/arm64-blue)|![Docker Pulls](https://img.shields.io/docker/pulls/juanjqo/ubuntu_24_dqrobotics)| A) Ubuntu 24 + dev staff|

```shell
docker run juanjqo/ubuntu_24_dqrobotics
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
sh run_container.sh ubuntu_24_dqrobotics ubuntu_24_dqrobotics
```
