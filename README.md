baxter_seminar
==============

Seminar sourcecode for the Baxter (Research) Robot from Rethink Robotics

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

You need to source setup.bash everytime you opened the terminal, For convinicence you'd better to write them in your `~/.bashrc`.

```
cat <<EOF >> ~/.bashrc
source ~/catkin_ws/devel/setup.bash
EOF
```


## Build Status

[![Build Status](https://travis-ci.org/tork-a/baxter_seminar.svg?branch=master)](https://travis-ci.org/tork-a/baxter_seminar)

