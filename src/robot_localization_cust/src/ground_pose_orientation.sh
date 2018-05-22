#! /usr/bin/env sh


rostopic echo -p /ground_truth/state/pose/pose/orientation > /home/simoneforno/simon_ws/bagfiles/Ekf/ground_truth_orient.csv
