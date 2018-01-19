#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
 
 int main(int argc, char** argv)
 {
  ros::init(argc, argv, "robot_tf_publisher_car");
  ros::NodeHandle n;

  ros::Rate r(1000);

  tf::TransformBroadcaster broadcaster;
 
  while(n.ok()){
      broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0.73, 0.0, 0.35)),
        ros::Time::now(),"base_link", "ibeo"));
      broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0.73, 0.0, 0.35)),
        ros::Time::now(),"base_link", "base_scan"));
      broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0.0, -0.17, 0.76)),
        ros::Time::now(),"base_link", "imu"));
 /*  broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0.0, -0.14, 0.537)),
        ros::Time::now(),"base_link", "scan"));
   broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0.0, 0.0, 0.0)),
        ros::Time::now(),"base_link", "ibeomap"));
   broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(-0.5, 0.5, 0.5, 0.5), tf::Vector3(0.0, -0.14, 0.537)),
        ros::Time::now(),"base_link", "kinect2_ir_optical_frame"));
   broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0.5, 0.5, 0.5, 0.5), tf::Vector3(0.0, -0.14, 0.537)),
        ros::Time::now(),"base_link", "kinect2_rgb_optical_frame"));
   broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0.0, -0.14, 0.7)),
        ros::Time::now(),"base_link", "laser"));
   broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0.0, -0.025, 0.2)),
        ros::Time::now(),"base_link", "base_imu_link"));
    broadcaster.sendTransform(
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0.0, 0.0, 0.0)),
        ros::Time::now(),"base_link", "base_footprint"));*/
    r.sleep();
  }
}

