#! /usr/bin/env sh

#rostopic echo -p /odometry/filtered > /home/simoneforno/simon_ws/bagfiles/amcl_localization/tuned_gmappingmap/odom.csv

rostopic echo -p /odometry/filtered > /home/simoneforno/simon_ws/bagfiles/graph_localization/tuned_kartomap/odom.csv
