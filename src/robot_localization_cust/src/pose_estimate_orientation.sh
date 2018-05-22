#! /usr/bin/env sh

rostopic echo -p /odometry/filtered/pose/pose/orientation > /home/simoneforno/simon_ws/bagfiles/Ekf/pose_estimate_orient.csv

