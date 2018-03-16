#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
//#include <Quaternion.h>
#include <tf/transform_datatypes.h>

int main(int argc, char** argv){
  ros::init(argc, argv, "ar_world_broadcaster");
  ros::NodeHandle node;

  tf::TransformBroadcaster br;
  //tf::TransformBroadcaster br2;
  tf::Transform tf1;
  tf::Transform tf2;
  tf::Transform tf3;
  tf::Transform tf4;
  tf::Transform tf5;
  tf::Transform tf6;
  tf::Transform tf7;
  tf::Transform tf8;
  tf::Transform tf9;
  tf::Transform tf10;
  tf::Transform tf11;
  tf::Transform tf12;
  tf::Transform tf13;
  tf::Transform tf14;

  double roll, pitch, yaw;

  ros::Rate rate(5.0);
  while (node.ok()){
    tf1.setOrigin( tf::Vector3(0.618, 1.5, 6) );
    tf1.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf1, ros::Time::now(), "ar_marker_1", "world_marker_1"));

    tf2.setOrigin( tf::Vector3(0.618, 6, 5.5) );
    tf::Quaternion q2;
    q2.setRPY(1.5708,0,-1.5708);  
    tf2.setRotation(q2);
    br.sendTransform(tf::StampedTransform(tf2, ros::Time::now(), "ar_marker_2", "world_marker_2"));

    tf3.setOrigin( tf::Vector3(0.618, 5.5, 0) );
    tf::Quaternion q3;
    q3.setRPY(0,-1.5708,0);  
    tf3.setRotation(q3);
    br.sendTransform(tf::StampedTransform(tf3, ros::Time::now(), "ar_marker_3", "world_marker_3"));

    tf4.setOrigin( tf::Vector3(0.618, 0, -1.5) );
    tf::Quaternion q4;
    q4.setRPY(-1.5708,0,1.5708);  
    tf4.setRotation(q4);
    br.sendTransform(tf::StampedTransform(tf4, ros::Time::now(), "ar_marker_4", "world_marker_4"));

    tf5.setOrigin( tf::Vector3(0.618, 13.5, 4.5) );
    tf::Quaternion q5;
    q5.setRPY(4.7123,0,-1.5708);
    tf5.setRotation(q5);
    br.sendTransform(tf::StampedTransform(tf5, ros::Time::now(), "ar_marker_5", "world_marker_5"));

    tf6.setOrigin( tf::Vector3(0.618, 13.5, 7.5) );
    tf::Quaternion q6;
    q6.setRPY(4.7123,0,-1.5708);
    tf6.setRotation(q6);
    br.sendTransform(tf::StampedTransform(tf6, ros::Time::now(), "ar_marker_6", "world_marker_6"));

    tf7.setOrigin( tf::Vector3(0.618, 13.5, 10.5) );
    tf::Quaternion q7;
    q7.setRPY(4.7123,0,-1.5708);
    tf7.setRotation(q7);
    br.sendTransform(tf::StampedTransform(tf7, ros::Time::now(), "ar_marker_7", "world_marker_7"));

    tf8.setOrigin( tf::Vector3(0.618, 12, -10.5) );
    tf8.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf8, ros::Time::now(), "ar_marker_8", "world_marker_8"));

    tf9.setOrigin( tf::Vector3(0.618, 12, -7.5) );
    tf9.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf9, ros::Time::now(), "ar_marker_9", "world_marker_9"));

    tf10.setOrigin( tf::Vector3(0.618, 12, -4.5) );
    tf10.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf10, ros::Time::now(), "ar_marker_10", "world_marker_10"));

    tf11.setOrigin( tf::Vector3(0.618, 12, -1.5) );
    tf11.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf11, ros::Time::now(), "ar_marker_11", "world_marker_11"));

    tf12.setOrigin( tf::Vector3(0.618, 1.5, -9) );
    tf12.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf12, ros::Time::now(), "ar_marker_12", "world_marker_12"));

    tf13.setOrigin( tf::Vector3(0.618, 1.5, -6) );
    tf13.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf13, ros::Time::now(), "ar_marker_13", "world_marker_13"));

    tf14.setOrigin( tf::Vector3(0.618, 0, 13.5) );
    tf14.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf14, ros::Time::now(), "ar_marker_14", "world_marker_14"));
    
    rate.sleep();
  }
  return 0;
};

