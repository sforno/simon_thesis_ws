#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
//#include <Quaternion.h>
#include <tf/transform_datatypes.h>

int main(int argc, char** argv){
  ros::init(argc, argv, "ar_world_broadcaster");
  ros::NodeHandle node;

  tf::TransformBroadcaster br;
  
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
  tf::Transform tf15;
  tf::Transform tf16;


  ros::Rate rate(5.0);
  while (node.ok()){
    tf1.setOrigin( tf::Vector3(0.618, 1, 1.6) );
    tf1.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf1, ros::Time::now(), "ar_marker_1", "world_marker_1"));

    tf2.setOrigin( tf::Vector3(0.618, -1, 1.6) );
    tf2.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf2, ros::Time::now(), "ar_marker_2", "world_marker_2"));

    tf3.setOrigin( tf::Vector3(0.618, 1, 5.6) );
    tf3.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf3, ros::Time::now(), "ar_marker_3", "world_marker_3"));

    tf4.setOrigin( tf::Vector3(0.618, -1, 5.6) );
    tf4.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf4, ros::Time::now(), "ar_marker_4", "world_marker_4"));

    tf5.setOrigin( tf::Vector3(0.618, 1, 9.6) );
    tf5.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf5, ros::Time::now(), "ar_marker_5", "world_marker_5"));

    tf6.setOrigin( tf::Vector3(0.618, 3.4, -1) );
    tf::Quaternion q6;
    q6.setRPY(-1.5708,0,1.5708);
    tf6.setRotation(q6);
    br.sendTransform(tf::StampedTransform(tf6, ros::Time::now(), "ar_marker_6", "world_marker_6"));

    tf7.setOrigin( tf::Vector3(0.618, 1, 13.6) );
    tf7.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf7, ros::Time::now(), "ar_marker_7", "world_marker_7"));

    tf8.setOrigin( tf::Vector3(0.618, -1, 13.6) );
    tf8.setRotation( tf::Quaternion(0, 1, 0, 1) );
    br.sendTransform(tf::StampedTransform(tf8, ros::Time::now(), "ar_marker_8", "world_marker_8"));

    tf9.setOrigin( tf::Vector3(0.618, 8, -13.6) );
    tf::Quaternion q9;
    q9.setRPY(0,-1.5708,0);
    tf9.setRotation(q9);
    br.sendTransform(tf::StampedTransform(tf9, ros::Time::now(), "ar_marker_9", "world_marker_9"));

    tf10.setOrigin( tf::Vector3(0.618, 10, -13.6) );
    tf::Quaternion q10;
    q10.setRPY(0,-1.5708,0);
    tf10.setRotation(q10);
    br.sendTransform(tf::StampedTransform(tf10, ros::Time::now(), "ar_marker_10", "world_marker_10"));

    tf11.setOrigin( tf::Vector3(0.618, 8, -9.6) );
    tf::Quaternion q11;
    q11.setRPY(0,-1.5708,0);
    tf11.setRotation(q11);
    br.sendTransform(tf::StampedTransform(tf11, ros::Time::now(), "ar_marker_11", "world_marker_11"));

    tf12.setOrigin( tf::Vector3(0.618, 10, -9.6) );
    tf::Quaternion q12;
    q12.setRPY(0,-1.5708,0);
    tf12.setRotation(q12);
    br.sendTransform(tf::StampedTransform(tf12, ros::Time::now(), "ar_marker_12", "world_marker_12"));

    tf13.setOrigin( tf::Vector3(0.618, 8, -5.6) );
    tf::Quaternion q13;
    q13.setRPY(0,-1.5708,0);
    tf13.setRotation(q13);
    br.sendTransform(tf::StampedTransform(tf13, ros::Time::now(), "ar_marker_13", "world_marker_13"));

    tf14.setOrigin( tf::Vector3(0.618, 18.1, 8) );
    tf::Quaternion q14;
    q14.setRPY(1.5708,0,-1.5708);
    tf14.setRotation(q14);
    br.sendTransform(tf::StampedTransform(tf14, ros::Time::now(), "ar_marker_14", "world_marker_14"));

    tf15.setOrigin( tf::Vector3(0.618, 8, -1.6) );
    tf::Quaternion q15;
    q15.setRPY(0,-1.5708,0);
    tf15.setRotation(q15);
    br.sendTransform(tf::StampedTransform(tf15, ros::Time::now(), "ar_marker_15", "world_marker_15"));

    tf16.setOrigin( tf::Vector3(0.618, 10, -1.6) );
    tf::Quaternion q16;
    q16.setRPY(0,-1.5708,0);
    tf16.setRotation(q16);
    br.sendTransform(tf::StampedTransform(tf16, ros::Time::now(), "ar_marker_16", "world_marker_16"));
    
    rate.sleep();
  }
  return 0;
};

