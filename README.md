# Simultaneous Localization and Mapping of an AGV in an indoor production hall

Authors: Simone Forno (s.forno@student.tue.nl), Jonas Hatzenbühler (jonas.hatzenbuehler@gmx.de)

OS: Linux Ubuntu 16.04 LTS Xenial Xerus, ROS (Robot Operative System)

Softwares: Gazebo 7.0

Simulative Hardwares: Husky Clearpath robot, Sick Laser Range Finder, Microsoft Kinect camera

# Description
In this repository ROS SLAM filters are used to localize an autonomous robot into a customized PEM production site. GMapping and Karto
are used to create 2D occupancy grid maps, consequentely AMCL is run for pose retrieval and tracking. The environment is created with Gazebo 7.0, 
and the filter performances are tested under the same conditions using ROS bagfiles. Lastly, a feature based EKF localization
method with AR tags is implemented.


# Getting started

== Creation of PEM production hall ==

Run the following commmand to launch the Gazebo simulator and see the resulting world model: <roslaunch husky_gazebo husky_fabrichalle.launch>

== Mapping ==

Gmapping: follow the istructions in the README.txt file under bagfiles/Mapping/Gmapping and test the gmapping performances on the gmapping.bag file. A detailed parameters description is also given in the same folder, with instructions on how to tune the filter for better map performances.

Karto: follow the instructions in the README.txt file under bagfiles/Mapping/Karto and test the karto performances on the karto.bag file. Also here some tuning is presented.

== Localization ==

Amcl: follow the istructions under bagfiles/Localization/Amcl in the README.txt file

Ekf: Open the Gazebo world model file containing the sparsed AR code tags by running the command <roslaunch husky_gazebo husky_tags.launch>. This is a lighter world file not containing walls of the production hall, to keep the simulation running light. You can insert walls simply by uncommenting walls in the .world file under the /husky_gazebo/world folder. Test the localization performance of EKF by roslaunching the file ekf_markers.launch under the /robot_localization_cust/launch folder; this fused detected markers with a Microsoft Kinect camera and relative encoder + IMU sensor data. Markers only localization is possible by removing the odometry from the params/my_ekf_markers.yaml.

See Matlab plots and numerical data results under the simon_ws/results folder.

# Prerequisites
The following installations and packages are required:

- ROS (http://wiki.ros.org/kinetic/Installation/Ubuntu)

- Husky robot (http://wiki.ros.org/husky_gazebo/Tutorials/Simulating%20Husky)

- GMapping (http://wiki.ros.org/gmapping)

- Karto (http://wiki.ros.org/nav2d)

- AMCL (http://wiki.ros.org/amcl)

- Tag detection (http://wiki.ros.org/ar_track_alvar) and EKF (http://wiki.ros.org/robot_localization)


