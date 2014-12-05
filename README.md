baxter_seminar
==============

Seminar sourcecode for the Baxter (Research) Robot from Rethink Robotics

## Install

Copy and paste following command to terminal.
```
source /opt/ros/hydro/setup.bash
mkdir -p ~/ros_ws/src
cd ~/ros_ws
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
source ~/ros_ws/devel/setup.bash
source `rospack find baxter_seminar_helper`/seminar.sh
EOF
```


## Build Status

[![Build Status](https://travis-ci.org/tork-a/baxter_seminar.svg?branch=master)](https://travis-ci.org/tork-a/baxter_seminar)

