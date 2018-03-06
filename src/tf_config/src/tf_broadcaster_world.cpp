#include <ros/ros.h>
#include <tf/transform_broadcaster.h>

int main(int argc, char** argv){
  ros::init(argc, argv, "ar_world_broadcaster");
  ros::NodeHandle node;

  tf::TransformBroadcaster br;
  //tf::TransformBroadcaster br2;
  tf::Transform tf1;
  tf::Transform tf2;
  tf::Transform tf3;
  tf::Transform tf4;

  ros::Rate rate(5.0);
  while (node.ok()){
    tf1.setOrigin( tf::Vector3(0.618, -1, 4) );
    tf1.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf1, ros::Time::now(), "ar_marker_1", "world_marker_1"));

    tf2.setOrigin( tf::Vector3(0.618, 1, 4) );
    tf2.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf2, ros::Time::now(), "ar_marker_2", "world_marker_2"));

    tf3.setOrigin( tf::Vector3(0.618, -1, 6) );
    tf3.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf3, ros::Time::now(), "ar_marker_3", "world_marker_3"));

    tf4.setOrigin( tf::Vector3(0.618, 1, 6) );
    tf4.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf4, ros::Time::now(), "ar_marker_4", "world_marker_4"));
    
    rate.sleep();
  }
  return 0;
};

