
#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <tf/transform_listener.h>

int main(int argc, char** argv){
    ros::init(argc, argv, "my_tf_listener");
  
    ros::NodeHandle nh_;


    tf::TransformListener listener;


    ros::Rate rate(10.0);
    while (node.ok()){
      tf::StampedTransform transform;
      try{

          listener.lookupTransform("/base_link", "/ar_marker_final", ros::Time(0), transform); // get the transform ar_marker_final --> base_link (as if marker = parent), as save it to the transform object
      }

      // print to check

      ROS_INFO("x: %f, y: %f", transform.getOrigin().x(),transform.getOrigin().y());

      // use that tranform object to save the estimated robot pose wrt to the marker
      // make a static tf from marker to map frame (say 0,0,0), and feed that to the Ekf filter
      // THIS IS NOT THE WAY TO GO

    rate.sleep();

}
return 0;
};