#include <ros/ros.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/String.h>
#include <std_msgs/Int32.h>
#include <ar_track_alvar_msgs/AlvarMarkers.h>
#include <ar_track_alvar_msgs/AlvarMarker.h>
#include <math.h>
#include <string.h>

#include <iostream>
#include <fstream>

// Create the data converter as a simple subscriber
int counter;

// typedef geometry_msgs::Pose ar_track_alvar::AlvarMarkers; // force the message definition 

void ar_pose_callback(const ar_track_alvar_msgs::AlvarMarkers::ConstPtr & msg)
{
    geometry_msgs::PoseWithCovarianceStamped  m1, m2, m3, m4; // define a PosewithCovariance message

    int size = msg->markers.size();
    for(int i = 0; i< size; i ++)
    {
    if (msg->markers[i].id == 1)
    {
    m1.header = msg->markers[i].pose.header;
    m1.pose.pose.position = msg->markers[i].pose.pose.position;
    m1.pose.pose.orientation = msg->markers[i].pose.pose.orientation;
    for(counter=0; counter < 36; counter ++)
    {
        if(counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
        {
            m1.pose.covariance[counter] = 0;
        }
    }
    // set diagonals

    m1.pose.covariance[7] = 0.001;
    m1.pose.covariance[14] = 0.001;
    m1.pose.covariance[21] = 0.001;
    m1.pose.covariance[28] = 0.001;
    m1.pose.covariance[35] = 0.001;
 //ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m1.pose.pose.position.x, m1.pose.pose.position.y, m1.pose.pose.position.z, m1.pose.pose.orientation.x, m1.pose.pose.orientation.y,m1.pose.pose.orientation.z);
    }
    if (msg->markers[i].id == 2)
    {
    m2.header = msg->markers[i].pose.header;
    m2.pose.pose.position = msg->markers[i].pose.pose.position;
    m2.pose.pose.orientation = msg->markers[i].pose.pose.orientation;
    for(counter=0; counter < 36; counter ++)
    {
        if(counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
        {
            m2.pose.covariance[counter] = 0;
        }
    }
    // set diagonals

    m2.pose.covariance[7] = 0.001;
    m2.pose.covariance[14] = 0.001;
    m2.pose.covariance[21] = 0.001;
    m2.pose.covariance[28] = 0.001;
    m2.pose.covariance[35] = 0.001;
 ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m2.pose.pose.position.x, m2.pose.pose.position.y, m2.pose.pose.position.z,
    m2.pose.pose.orientation.x, m2.pose.pose.orientation.y,m2.pose.pose.orientation.z);
    }
    if (msg->markers[i].id == 3)
    {
    m3.header = msg->markers[i].pose.header;
    m3.pose.pose.position = msg->markers[i].pose.pose.position;
    m3.pose.pose.orientation = msg->markers[i].pose.pose.orientation;
    for(counter=0; counter < 36; counter ++)
    {
        if(counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
        {
            m3.pose.covariance[counter] = 0;
        }
    }
    // set diagonals

    m3.pose.covariance[7] = 0.001;
    m3.pose.covariance[14] = 0.001;
    m3.pose.covariance[21] = 0.001;
    m3.pose.covariance[28] = 0.001;
    m3.pose.covariance[35] = 0.001;
 ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m3.pose.pose.position.x, m3.pose.pose.position.y, m3.pose.pose.position.z,
    m3.pose.pose.orientation.x, m3.pose.pose.orientation.y,m3.pose.pose.orientation.z);
    }
    if (msg->markers[i].id == 4)
    {
    m4.header = msg->markers[i].pose.header;
    m4.pose.pose.position = msg->markers[i].pose.pose.position;
    m4.pose.pose.orientation = msg->markers[i].pose.pose.orientation;
    for(counter=0; counter < 36; counter ++)
    {
        if(counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
        {
            m4.pose.covariance[counter] = 0;
        }
    }
    // set diagonals

    m4.pose.covariance[7] = 0.001;
    m4.pose.covariance[14] = 0.001;
    m4.pose.covariance[21] = 0.001;
    m4.pose.covariance[28] = 0.001;
    m4.pose.covariance[35] = 0.001;
    
 ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m4.pose.pose.position.x, m4.pose.pose.position.y, m4.pose.pose.position.z,
    m4.pose.pose.orientation.x, m4.pose.pose.orientation.y,m4.pose.pose.orientation.z);
   } 
}
}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "subscriber");


  //Converter convert = Converter();

  //convert.start();

  ros::NodeHandle nh_;
  //ros::Publisher marker1_pub;
  //ros::Publisher marker2_pub;
  ros::Subscriber ar_pose_sub;

  int desidered_freq = 5.0;



  ar_pose_sub = nh_.subscribe < ar_track_alvar_msgs::AlvarMarkers > ("/ar_pose_marker", 1000, ar_pose_callback);
  
  //ros::spin(); // spin the callback till the user prsses Ctrl + C

  //ros::Rate r(desidered_freq);

  /* while (ros::ok())
  {
    ros::spin();
    r.sleep();
  } */
  
  ros::spin();
  

  return 0;
}
