#!/bin/bash

# This script download map from Amazon S3 and launch navigation stack

#Download map from HWS OBS
obsutil config -i=$HWS_AK -k=$HWS_SK -t=$HWS_TOKEN -e=$HWS_OBS_ENDPOINT
obsutil cp obs://c00455485/map.yaml  /tmp/map.yaml
obsutil cp obs://c00455485/map.pgm  /tmp/map.pgm


#Launch navigation stack
roslaunch turtlebot3_mynavigation turtlebot3_navigation.launch map_file:=/tmp/map.yaml open_rviz:=false
