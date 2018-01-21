#! /usr/bin/env sh

rostopic echo -p /amcl_pose > /home/simoneforno/simon_ws/bagfiles/amcl_localization/tuned_finalgmapp/pose.csv

#rostopic echo -p /SelfLocalizer/weighted_pose > /home/simoneforno/simon_ws/bagfiles/graph_localization/tuned/pose.csv
