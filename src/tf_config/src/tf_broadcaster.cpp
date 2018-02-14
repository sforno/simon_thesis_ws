#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
 
 int main(int argc, char** argv)
 {
  ros::init(argc, argv, "robot_tf_publisher");
  ros::NodeHandle n;

  ros::Rate r(1000);

  tf::TransformBroadcaster broadcaster;
 
  while(n.ok()){
    broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(2, -1, 0)),
        ros::Time::now(),"map", "ar_marker_1"));
   /* broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0, 0, 0)),
        ros::Time::now(),"map", "odom"));
   broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0, 0, 0)),
        ros::Time::now(),"map", "odom"));
broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0, 0, 0)),
        ros::Time::now(),"map", "odom"));
  /*
    broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 1, 0), tf::Vector3(-0.74, 0.18, 0.93)),
        ros::Time::now(),"base_link", "base_imu_link"));
    broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0.0, 0.0, 0.0)),
        ros::Time::now(),"base_link", "base_footprint"));
   broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 1, 0), tf::Vector3(0.05,0.0,0.07)),
        ros::Time::now(),"base_link", "px4flow"));//(0.05,0.0,0.07) (-0.33, 0.24, 0.07) 
   broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(-0.5, 0.5, 0.5, 0.5), tf::Vector3(0.17, 0.0, 0.50)),
        ros::Time::now(),"base_link", "kinect2_ir_optical_frame"));
   broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0.5, 0.5, 0.5, 0.5), tf::Vector3(0.17, 0.0, 0.50)),
        ros::Time::now(),"base_link", "kinect2_rgb_optical_frame"));
    broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(-0.575, 0.12, 0.95)),
        ros::Time::now(),"base_link", "Xsens"));
   broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(-0.665, 0.175, 0.95)),
        ros::Time::now(),"base_link", "Fairchild"));
   broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(-0.645, 0.125, 0.95)),
        ros::Time::now(),"base_link", "crius"));

*/

    r.sleep();
  }
}

