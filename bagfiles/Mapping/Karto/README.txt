
== Data ==

Linear speed: 0.5 m/s
Angular speed: 0.25 rad/s
Friction coefficient wheels/ground: see wheel.urdf.xacro


Create maps from the bag files with:
- Set sim_time to true
- Launch the Gazebo world under husky-kinetic-devel/husky_gazebo/launch/husky_fabrichalle.launch
- Launch the file navigation_2d/nav2d_tutorials/graph_mapper.launch
- Launch the bag file graph_mapping.bag
- Save the resulting map with the command rosrun map_server map_saver -f <filename>

