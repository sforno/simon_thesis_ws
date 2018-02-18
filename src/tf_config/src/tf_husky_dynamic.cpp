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

  tf::Stamped<tf::Pose> marker2map; // tf::Stamped<tf::Pose> is a stamped Pose, while tf::Transform is vector relating poses
  tf::Stamped<tf::Pose> map2marker;
  tf::Stamped<tf::Pose> robot2map;
  tf::Transform map2robot;
  //tf::TransformStamped map2robot
  //tf::Stamped<tf::Pose> now;
  tf::Stamped<tf::Pose> prev;
  tf::Stamped<tf::Pose> now;
  geometry_msgs::Pose message_pose;
  geometry_msgs::Quaternion message_quat;

  geometry_msgs::PoseWithCovarianceStamped rob_pose; //goal: get a preliminary map2robot tf
  tf::TransformListener listener;
  //tf::TransformBroadcaster broadcaster;
  //tf::Stamped<tf::Pose> map2robot;

  tf::TransformBroadcaster br;
  tf::StampedTransform t;
  tf::Transform transform;

  int i = 1;

  std::string mMapFrame;
  std::string mRobotFrame;

  void robot_callback();

  Dynamic_tf()
  {
    //sub_ = nh_.subscribe < ar_track_alvar_msgs::AlvarMarkers > ("/ar_pose_marker", 1, &Dynamic_tf::robot_callback, this);
    //m2r = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/map2robot", 1);
    globalNode.param("map_frame", mMapFrame, std::string("map")); // get map from Parameter Server?
    globalNode.param("robot_frame", mRobotFrame, std::string("base_link"));
  };
};

void Dynamic_tf::robot_callback()
{
   if(i==1){
    tf::Transform map_init (tf::Quaternion(0, 0, 0, 1), tf::Vector3(0, 0, 0));
    tf::Stamped<tf::Pose> now (map_init,ros::Time::now(),mMapFrame);
    prev = now;
    i++;
    transform.setOrigin(tf::Vector3(2, 1, 0));
    transform.setRotation(tf::Quaternion(0, 0, 0, 1));
    //ROS_INFO("Prev x: %f, y: %f", prev.getOrigin().x(),prev.getOrigin().y());
    //ROS_INFO("Map pose x: %f, y: %f", now.getOrigin().x(),now.getOrigin().y()); //output is the same, assignment operator is allowed like this
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "map", "ar_marker_1"));
   }
   else{
     //read the actual map pose
     // use the available transform marker->robot, save robot pose, use transformPose method to change the save the new map Pose
     try{
      listener.waitForTransform("/ar_marker_1", "/base_link", ros::Time(0), ros::Duration(10.0));
      listener.lookupTransform("/base_link", "/map", ros::Time(0), t);

      tf::Stamped<tf::Pose> now (t,ros::Time::now(), mMapFrame);

      //listener.transformPose(mMapFrame,robot_pose,now);
      ROS_INFO("Now x: %f, y: %f", now.getOrigin().x(),now.getOrigin().y());
    }

    catch (tf::TransformException &ex) {
      ROS_ERROR("%s",ex.what());
      ros::Duration(1.0).sleep();
    }
   }

  // calculate diff

  //tf::Pose subtract = prev.inverseTimes(now);
  //tf::poseTFToMsg(&subtract, &message_pose);
  //tf::quaternionTFToMsg(subtract, message_quat);

   // send out the diff
   
       //tf::Transform transform;
       //transform.setOrigin(tf::Vector3(message_pose->position.x+2,message_pose->position.y-1, 0.0));
       //transform.setRotation(tf::Quaternion(subtract.orientation.x, subtract.orientation.y, subtract.orientation.z, subtract.orientation.w));
      
   
       //br.sendTransform(transform, ros::Time::now(), "map", "ar_marker_1");

  //prev=now 
}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "dynamic_tf");
  
  Dynamic_tf dynamic;
  int desidered_freq = 15.0;

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