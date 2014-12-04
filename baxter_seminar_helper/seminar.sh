#!/bin/bash

source `rospack find jsk_tools`/src/bashrc.ros

# we can remove this once https://github.com/jsk-ros-pkg/jsk_common/pull/613 is merged
type setrosmaster > /dev/null 2>&1
if [ $? == 1 ]; then
   function rossetmaster() { # 自分のよく使うロボットのhostnameを入れる
       local hostname=${1-"baxter-ros"}
       local ros_port=${2-"11311"}
       export ROS_MASTER_URI=http://$hostname:$ros_port
       if [[ "${PS1}" =~ \[http://.*:.*\]\ (.*)$ ]] ; then
           export PS1="${BASH_REMATCH[1]}"
       fi
       export PS1="\[\033[00;31m\][$ROS_MASTER_URI][$ROS_IP]\[\033[00m\] ${PS1}"
       echo -e "\e[1;31mset ROS_MASTER_URI to $ROS_MASTER_URI\e[m"
   }
fi

rossetip


