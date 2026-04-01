FROM juanjqo/ubuntu_24_dqrobotics
SHELL ["/bin/bash", "-c"]
ENV BASH_ENV="/etc/bash_env"

# Update apt-get
RUN sudo apt-get update -q \
    && sudo apt-get upgrade -y \
    && sudo apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install ROS2 Jazzy. 
RUN chmod +x ~/git/docker_recipes/dependencies/install_ros_jazzy.sh
RUN bash -c '~/git/docker_recipes/dependencies/install_ros_jazzy.sh'
