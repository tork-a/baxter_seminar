baxter_seminar
==============

Workshop sourcecode for the Baxter (Research) Robot from Rethink Robotics.

## Install

Copy and paste following command to terminal.
```
source /opt/ros/indigo/setup.bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
wstool init src
wstool merge -t src https://raw.githubusercontent.com/tork-a/baxter_seminar/master/baxter_seminar.rosinstall
wstool update -t src
rosdep install -y -r --from-paths src --ignore-src
catkin_make
source devel/setup.bash
```

Also, adjust your machine's time with the robot. Be sure to replace `%ROBOT_HOST%` with the robot's host name or IP address (ask your robot maintaner for it).

```
ntpdate -q %ROBOT_HOST%;
```

You need some setting for the terminals everytime you open one. For convinicence you'd better write them into your `~/.bashrc`. 

```
$ echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
$ echo "rossetip" >> ~/.bashrc
$ echo "rossetmaster %ROBOT_HOST%" >> ~/.bashrc
```

## Build Status

[![Build Status](https://travis-ci.org/tork-a/baxter_seminar.svg?branch=master)](https://travis-ci.org/tork-a/baxter_seminar)

