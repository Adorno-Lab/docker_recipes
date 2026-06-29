FROM ubuntu:resolute
SHELL ["/bin/bash", "-c"]
ENV BASH_ENV="/etc/bash_env"


# Install dependencies for development
RUN apt-get update && apt-get install -y build-essential net-tools iputils-ping \
git locate curl libpci3 vim neovim nano terminator unzip wget gpg \
cmake extra-cmake-modules g++ fakeroot software-properties-common libxcb-cursor0 libxcb-cursor-dev \
xorg-dev libwayland-dev libxkbcommon-dev wayland-protocols gedit \
python3-pybind11 python3-pip thunar mc\
&& apt-get clean && \
rm -rf /var/lib/apt/lists/*


# Install Qt creator
RUN apt-get update && apt-get install -y qtcreator \
#    qtbase5-dev \
#    libgl1-mesa-dev \
#    libx11-dev \
#    libxrender-dev \
#    libxext-dev \
#    libxtst-dev \
#    libxi-dev \
#    x11-apps \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*



  
# Install lyx and dependencies (tex)
RUN apt-get update -q \
    && apt-get install -y \
        lyx \
        okular \
        inkscape \
        texlive-full \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
