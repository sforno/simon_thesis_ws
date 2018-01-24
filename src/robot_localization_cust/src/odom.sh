#! /usr/bin/env sh

rostopic echo -p /odometry/filtered > /home/simoneforno/simon_ws/bagfiles/Ekf/odom.csv

# rostopic echo -p /finalpose > /home/simoneforno/simon_ws/bagfiles/Ekf/ekf_pose.csv
