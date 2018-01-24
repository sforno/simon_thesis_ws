#! /usr/bin/env sh

#rostopic echo -p /odometry/filtered > /home/simoneforno/simon_ws/bagfiles/amcl_localization/tuned_gmappingmap/odom.csv

rostopic echo -p /finalpose > /home/simoneforno/simon_ws/bagfiles/Ekf/ekf.csv
