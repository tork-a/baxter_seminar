#!/bin/bash

hostname=${1-"011402P0006.local"}  # BRR at Nihon Binary Coltd

source `rospack find jsk_tools`/src/bashrc.ros
rossetip;
rossetmaster ${hostname};

for (( i=1; i<=3; i++)) 
do
  echo "#${i} ntpdate call";
  ntpdate -q ${hostname};
done;

