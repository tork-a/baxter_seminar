#!/bin/bash

source `rospack find jsk_tools`/src/bashrc.ros

type setrosmaster > /dev/null 2>&1
if [ $? == 1 ]; then
    alias setrosmaster=setrosrobot
fi

rossetip


