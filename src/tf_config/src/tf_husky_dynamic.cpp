/*
Dynamic transform to compute changes in the map frame while localizing tags
Author: Simone Forno
Email: s.forno@student.tue.nl
*/
#include <std_msgs/String.h>
#include <string>
#include <iostream>
#include <ros/ros.h>
#include <ar_track_alvar_msgs/AlvarMarkers.h>
#include <ar_track_alvar_msgs/AlvarMarker.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>
#include <tf/transform_datatypes.h>
#include <tf/time_cache.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/Int32.h>
#include <math.h>


class Dynamic_tf
{
public:
  ros::NodeHandle nh_;
  ros::NodeHandle globalNode;
  ros::Subscriber sub_;
  ros::Publisher m2r;
  tf::TransformBroadcaster br;

  tf::Stamped<tf::Pose> marker2map; // tf::Stamped<tf::Pose> is a stamped Pose, while tf::Transform is vector relating poses
  tf::Stamped<tf::Pose> map2marker;
  tf::Stamped<tf::Pose> robot2map;
  tf::Transform map2robot;
  tf::Stamped<tf::Pose> prev;
  tf::Stamped<tf::Pose> map_pose;
  tf::Stamped<tf::Pose> subtract;
  geometry_msgs::Pose message_pose;
  geometry_msgs::Quaternion message_quat;
  geometry_msgs::PoseWithCovarianceStamped rob_pose; //goal: get a preliminary map2robot tf
  tf::TransformListener listener;
  tf::StampedTransform transform;


  int i = 1;
  std::string mMapFrame;
  std::string mRobotFrame;

  void robot_callback();

  Dynamic_tf()
  {
    globalNode.param("map_frame", mMapFrame, std::string("map")); 
    globalNode.param("robot_frame", mRobotFrame, std::string("base_link"));
  };
};

void Dynamic_tf::robot_callback()
{
    try{
      listener.waitForTransform("/map", "/odom", ros::Time(0), ros::Duration(10.0));
      listener.lookupTransform("/map", "/odom", ros::Time(0), transform);
      ROS_INFO("Map x: %f, y: %f", transform.getOrigin().x(),transform.getOrigin().y()); //gives me base_link origin 0,0,0, 
    }

    catch (tf::TransformException &ex) {
      ROS_ERROR("%s",ex.what());
      ros::Duration(1.0).sleep();
    }
    //Save the map_pose
    tf::Stamped<tf::Pose> map_pose (transform,ros::Time::now(),mMapFrame);
    //ROS_INFO("Translation x: %f, y: %f", map_pose.getOrigin().x(),map_pose.getOrigin().y());
    //ROS_INFO("Rotation x: %f, y: %f, z: %f, w: %f", map_pose.getRotation().x(),map_pose.getRotation().y(),map_pose.getRotation().z(),map_pose.getRotation().w());
    
    //Create the dynamic tf and broadcast the change
    
    tf::Quaternion rotation (map_pose.getRotation().x(),map_pose.getRotation().y(),map_pose.getRotation().z(),map_pose.getRotation().w());
    tf::Vector3 translation (map_pose.getOrigin().x()+4,map_pose.getOrigin().y()-1,map_pose.getOrigin().z());
    tf::Transform dynamic_tf (rotation,translation);
    //ROS_INFO("Translation x: %f, y: %f", dynamic_tf.getOrigin().x(),dynamic_tf.getOrigin().y());
    //ROS_INFO("Rotation x: %f, y: %f, z: %f, w: %f", dynamic_tf.getRotation().x(),dynamic_tf.getRotation().y(),dynamic_tf.getRotation().z(),dynamic_tf.getRotation().w()); ok this gives sitting on map and looking odom+2 && odom-1
    // Send dynamic tf
    br.sendTransform(tf::StampedTransform(dynamic_tf, ros::Time::now(), "world", "ar_marker_1"));
    

  // calculate diff

  //prev.inverseTimes(now); // To do's: store the value of the result into another Pose called diff, diff = prev.inverseTimes(now) does not work
  //tf::poseTFToMsg(&subtract, &message_pose);
  //tf::quaternionTFToMsg(subtract, message_quat);

   // send out the diff

       //transform.setOrigin(tf::Vector3(message_pose->position.x+2,message_pose->position.y-1, 0.0));
       //transform.setRotation(tf::Quaternion(subtract.orientation.x, subtract.orientation.y, subtract.orientation.z, subtract.orientation.w));
      
   
       //br.sendTransform(transform, ros::Time::now(), "map", "ar_marker_1");

  //prev=now 
  
}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "dynamic_tf");
  
  Dynamic_tf dynamic;
  int desidered_freq = 100.0;

  ros::Rate r(desidered_freq);

  while (ros::ok())
  {
    dynamic.robot_callback();
    //ROS_INFO("Size: %d",size);
    ros::spinOnce();
    r.sleep();
  } 
  return 0;
}