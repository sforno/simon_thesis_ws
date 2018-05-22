

Create maps from the bag files with:
- Set sim_time to true
- Launch the Gazebo world under husky-kinetic-devel/husky_gazebo/launch/husky_fabrichalle.launch
- Launch the file husky-kinetic-devel/husky_navigation/launch/gmapping.launch
- Launch the bag file gmapping.bag
- Save the resulting map with rosrun map_server map_saver -f <filename>

