== graph_based_mapping and gmapping_base bag files are the same files, the mapping performance should be tested on the same exact conditions [1]

[1] An Evaluation of 2D SLAM Techniques Available in ROS, J. Santos, D. Portugal, R. Rocha

== grap_based_localizer is the base file in which Amcl and Graph Localizer should be tested == 



=== Teleop linear speed for the bag localizer file: left to 0.5 m/s, angular speed 0,25 rd/s, friction coefficient are found under wheel.urdf.xacro

Create maps from the bag files with:
- Set sim_time to true
- Launch the file graph_mapper.launch under the nav2d_tutorials
- Launch the bag file graph_base_mapping

