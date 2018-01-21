# Simultaneous Localization and Mapping of an AGV in an indoor production hall

Authors: Simone Forno (s.forno@student.tue.nl), Jonas Hatzenbühler (jonas.hatzenbuehler@gmx.de)

OS: Linux Ubuntu 16.04 LTS Xenial Xerus, ROS (Robot Operative System)

Softwares: Gazebo 7.0

Simulative Hardwares: Husky Clearpath robot, Sick Laser Range Finder, Microsoft Kinect camera

# Description
In this repository ROS SLAM filters are used to localize an autonomous robot into an unknown production site. GMapping and Karto-SLAM
are used to perform the preliminary mapping, consequentely AMCL is used to retrieve the robot`s localization. The environment was created
using Gazebo 7.0, and the filter performances are tested under same conditions using ROS bagfiles. Lastly, a feature based EKF localization
method with AR tags is presented.

# Getting started
To see the simulation in action run the following commands:

Gmapping: in the husky-kinetic-devel/husky_gazebo folder roslaunch the robot with your favourite environment, run the GMapping
by roslaunch gmapping.launch in the husky_navigation folder and see the robot in action.

Karto-SLAM: in the husky-kinetic-devel/husky_gazebo folder roslaunch the robot with your favourite environment, i the navigation_2d pkg
under nav2d_tutorials launch the graph_mapper.launch file

Amcl: Run amcl.launch and "rosbag play --clock <filename>" the bag files under the bagfiles folder

EKF with AR tags: see notes

# Prerequisites
The following installations and packages are required

- ROS (http://wiki.ros.org/kinetic/Installation/Ubuntu)

- GMapping (http://wiki.ros.org/gmapping)

- Karto (http://wiki.ros.org/nav2d)

- AMCL (http://wiki.ros.org/amcl)

- Tag detection (http://wiki.ros.org/ar_track_alvar) and EKF (http://wiki.ros.org/robot_localization)

# Note
This repository is still under development