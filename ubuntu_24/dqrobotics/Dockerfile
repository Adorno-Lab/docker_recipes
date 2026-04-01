FROM ubuntu:noble
SHELL ["/bin/bash", "-c"]
ENV BASH_ENV="/etc/bash_env"

# Update apt-get
RUN sudo apt-get update -q \
    && sudo apt-get upgrade -y \
    && sudo apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install dependencies for development
RUN apt-get update && \
apt-get install -y net-tools \ 
iputils-ping \
git \
nss-updatedb \
locate \
curl \
libpci3 \
vim \
nano \
terminator \
cmake \
extra-cmake-modules \
g++ \
fakeroot \
software-properties-common \
&& apt-get clean && \
rm -rf /var/lib/apt/lists/*

# Clone docker_recipes
RUN mkdir -p ~/git/
RUN cd ~/git/ && git clone https://github.com/Adorno-Lab/docker_recipes.git --recursive

# Install DQ Robotics
RUN chmod +x ~/git/docker_recipes/dependencies/install_dqrobotics.sh
RUN bash -c '~/git/docker_recipes/dependencies/install_dqrobotics.sh'

