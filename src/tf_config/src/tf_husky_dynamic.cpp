/*
Dynamic transform to compute changes in the map frame while localizing tags
Author: Simone Forno
Email: s.forno@student.tue.nl
*/
#include <std_msgs/String.h>
#include <string>
#include <iostream>
#include <ros/ros.h>

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
  ros::Subscriber robot_base;
  ros::Publisher rob_pub;

  tf::Stamped<tf::Pose> marker2map;
  tf::Stamped<tf::Pose> map2marker;
  tf::Stamped<tf::Pose> robot2map;

  tf::Pose now;
  tf::Pose prev;
  geometry_msgs::Pose message_pose;
  geometry_msgs::Quaternion message_quat;

  geometry_msgs::PoseWithCovarianceStamped rob_pose; //goal: get a preliminary map2robot tf
  tf::TransformListener listener;
  //tf::TransformBroadcaster broadcaster;
  tf::Stamped<tf::Pose> map2robot;

  tf::TransformBroadcaster br;

  int i = 1;

  std::string mMapFrame;
  std::string mRobotFrame;

  void robot_callback(const nav_msgs::Odometry::ConstPtr & msg);

  Dynamic_tf()
  {
    robot_base = nh_.subscribe < nav_msgs::Odometry > ("/odometry/filtered", 1, &Dynamic_tf::robot_callback, this);
    rob_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/map2robot", 1);
    globalNode.param("map_frame", mMapFrame, std::string("map")); // get map from Parameter Server?
    globalNode.param("robot_frame", mRobotFrame, std::string("base_link"));
  };

};

void Dynamic_tf::robot_callback(const nav_msgs::Odometry::ConstPtr & msg)
{
 /* geometry_msgs::PoseWithCovarianceStamped  rob_pose; //goal: get a preliminary map2robot tf
  tf::TransformListener listener;
  tf::TransformBroadcaster broadcaster;
  tf::Stamped<tf::Pose> map2robot; */

// Copy the contents of the odometry message but publish it on the mapFrame istead --> goal is to somehow get a map tf
//if(i==1){
  rob_pose.header.frame_id = mMapFrame.c_str();
  rob_pose.header.stamp = msg->header.stamp;
  rob_pose.pose.pose.position.x = msg->pose.pose.position.x;
  rob_pose.pose.pose.position.y = msg->pose.pose.position.y;
  //rob_pose.pose.pose.position.z = msg->pose.pose.position.z;
  rob_pose.pose.pose.orientation.x = msg->pose.pose.orientation.x;
  rob_pose.pose.pose.orientation.y = msg->pose.pose.orientation.y;
  rob_pose.pose.pose.orientation.z = msg->pose.pose.orientation.z;

  rob_pose.pose.covariance = msg->pose.covariance;

  //Define the map2robot tf
  //tf::Transform map2robot
  map2robot.setOrigin(tf::Vector3(rob_pose.pose.pose.position.x, rob_pose.pose.pose.position.y, 0));
  map2robot.setRotation(tf::Quaternion(rob_pose.pose.pose.orientation.x,rob_pose.pose.pose.orientation.y,rob_pose.pose.pose.orientation.z,1));
  // Publish the message to check if map2robot is set correctly
  rob_pub.publish(rob_pose); //message is published correctly!
  

  ROS_INFO("x: %f, y: %f", map2robot.getOrigin().x(),map2robot.getOrigin().y()); //correct
  i = i+1;
  // not get the inverse and save the map coords
  //robot2map.setData(map2robot.inverse());
  //robot2map.frame_id_= mRobotFrame.c_str();
  //ROS_INFO("x: %f, y: %f", robot2map.getOrigin().x(),robot2map.getOrigin().y());
  //now=prev=0;
//}
 
  //else{
    //now = setOrigin(mapframe)
  //}
  // Make a little print of map2robot coords
  //ROS_INFO("x: %f, y: %f", map2robot.getOrigin().x(),map2robot.getOrigin().y()); //correct

  // Now I have the map tf, I can proceed with vectors difference hint: marker2map = robot2map - robot2marker


  //tf::Pose subtract = prev.inverseTimes(now);
  //tf::poseTFToMsg(&subtract, &message_pose);
  //tf::quaternionTFToMsg(subtract, message_quat);


  
      //tf::Transform transform;
       //transform.setOrigin(tf::Vector3(message_pose->position.x+2,message_pose->position.y-1, 0.0));
       //transform.setRotation(tf::Quaternion(subtract.orientation.x, subtract.orientation.y, subtract.orientation.z, subtract.orientation.w));
      
   
       //br.sendTransform(transform, ros::Time::now(), "map", "ar_marker_1");

       //prev= now;
  //tf::Stamped<tf::Pose> map2robot;
/*
  try 
  {
    tf::Stamped<tf::Pose> robot2map;
    robot2map.setData(map2robot.inverse());
    //robot2map.stamp = msg->header.stamp;
    //robot2map.frame_id = std::string("base_link");
    ROS_INFO("x: %f, y: %f", robot2map.getOrigin().x(),robot2map.getOrigin().y()); //correct

  // get marker2map
  listener.transformPose("ar_marker_1",robot2map,marker2map);

  // Create the map2marker tf
  map2marker.setData(marker2map.inverse());
  }

  catch(tf::TransformException)
  {
    ROS_WARN("Failed to subtract robot to marker transform");
  } */

  // send the transform over the wire
 // broadcaster.sendTransform(tf::StampedTransform(map2marker,ros::Time::now(),"map","ar_marker_1"));

}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "dynamic_tf");
  
  Dynamic_tf dynamic;
  int desidered_freq = 15.0;

  ros::Rate r(desidered_freq);

  while (ros::ok())
  {
    //ROS_INFO("Size: %d",size);
    ros::spinOnce();
    r.sleep();
  } 
  return 0;
}