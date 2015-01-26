#!/bin/bash

source `rospack find jsk_tools`/src/bashrc.ros

for (( i=1; i<=3; i++)) 
do
  echo "#${i} ntpdate call";
  rossetmaster 011402P0006.local;
done

rossetip


