FROM murilomarinho/sas:jazzy
ARG ROS_DOMAIN_ID=1
ENV ROS_DOMAIN_ID=$ROS_DOMAIN_ID  
SHELL ["/bin/bash", "-c"]
ENV BASH_ENV="/etc/bash_env"


# Clone motion_capture_tracking.git 
RUN mkdir -p ~/ros2_ws/src
RUN mkdir -p ~/git && cd ~/git && git clone -b ros2 https://github.com/juanjqo/motion_capture_tracking.git --recursive

RUN cp -r ~/git/motion_capture_tracking ~/ros2_ws/src/ \
&& /bin/bash -c "source /opt/ros/jazzy/setup.bash; cd ~/ros2_ws/; colcon build && source install/setup.bash" 

RUN echo "alias launch_vicon='cdros2 && source install/setup.bash && ros2 launch motion_capture_tracking launch.py ' " >> /etc/bash_env
RUN echo "source /etc/bash_env" >> ~/.bashrc
