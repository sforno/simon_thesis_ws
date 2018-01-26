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


class Converter
{
public:
    // Variables
    ros::NodeHandle nh_;
    ros::Subscriber ar_pose_sub;
    // Write publishers for each of the 4 Markers
    ros::Publisher marker1_pub;
    ros::Publisher marker2_pub;
    ros::Publisher marker3_pub;
    ros::Publisher marker4_pub;
    ros::Publisher marker5_pub;
    ros::Publisher marker6_pub;
    ros::Publisher marker7_pub;
    ros::Publisher marker8_pub;
    int counter;
    float desired_freq_;
void ar_pose_callback(const ar_track_alvar_msgs::AlvarMarkers::ConstPtr & msg);

    //Methods, advertise and subscribe to topics
    Converter()
    {
        desired_freq_= 5.0;
        //Subscriber
        ar_pose_sub = nh_.subscribe < ar_track_alvar_msgs::AlvarMarkers > ("/ar_pose_marker", 1, &Converter::ar_pose_callback, this); // defined the callback along with the methods

        //Publishers 
        marker1_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker1", 1);
        marker2_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker2", 1);
        marker3_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker3", 1);
        marker4_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker4", 1);
        marker5_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker5", 1);
        marker6_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker6", 1);
        marker7_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker7", 1);
        marker8_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker8", 1);

        ROS_INFO("Setup finished");
    };
    };
    
 void Converter::ar_pose_callback(const ar_track_alvar_msgs::AlvarMarkers::ConstPtr & msg)
{
    geometry_msgs::PoseWithCovarianceStamped  m1, m2, m3, m4, m5, m6, m7, m8; // define a PosewithCovariance message

    int size = msg->markers.size();
    for(int i = 0; i< size; i ++)
    {
    if (msg->markers[i].id == 1)
    {
    m1.header = msg->header;
    m1.header.frame_id = "ar_marker_1";
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

    marker1_pub.publish(m1);
 //ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m1.pose.pose.position.x, m1.pose.pose.position.y, m1.pose.pose.position.z, m1.pose.pose.orientation.x, m1.pose.pose.orientation.y,m1.pose.pose.orientation.z);
    }
    if (msg->markers[i].id == 2)
    {
    m2.header = msg->header;
    m2.header.frame_id = "ar_marker_2";
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

    marker2_pub.publish(m2);
//ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m2.pose.pose.position.x, m2.pose.pose.position.y, m2.pose.pose.position.z, m2.pose.pose.orientation.x, m2.pose.pose.orientation.y,m2.pose.pose.orientation.z);
    }
    if (msg->markers[i].id == 3)
    {
    m3.header = msg->header;
    m3.header.frame_id = "ar_marker_3";
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

    marker3_pub.publish(m3);
 //ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m3.pose.pose.position.x, m3.pose.pose.position.y, m3.pose.pose.position.z, m3.pose.pose.orientation.x, m3.pose.pose.orientation.y,m3.pose.pose.orientation.z);
    }
    if (msg->markers[i].id == 4)
    {
    m4.header = msg->header;
    m4.header.frame_id = "ar_marker_4";
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
    
    marker4_pub.publish(m4);
 //ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m4.pose.pose.position.x, m4.pose.pose.position.y, m4.pose.pose.position.z, m4.pose.pose.orientation.x, m4.pose.pose.orientation.y,m4.pose.pose.orientation.z);
   }
   if (msg->markers[i].id == 5)
   {
   m5.header = msg->header;
   m5.header.frame_id = "ar_marker_5";
   m5.pose.pose.position = msg->markers[i].pose.pose.position;
   m5.pose.pose.orientation = msg->markers[i].pose.pose.orientation;
   for(counter=0; counter < 36; counter ++)
   {
       if(counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
       {
           m5.pose.covariance[counter] = 0;
       }
   }
   // set diagonals

   m5.pose.covariance[7] = 0.001;
   m5.pose.covariance[14] = 0.001;
   m5.pose.covariance[21] = 0.001;
   m5.pose.covariance[28] = 0.001;
   m5.pose.covariance[35] = 0.001;
   
   marker5_pub.publish(m5);
//ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m4.pose.pose.position.x, m4.pose.pose.position.y, m4.pose.pose.position.z, m4.pose.pose.orientation.x, m4.pose.pose.orientation.y,m4.pose.pose.orientation.z);
  }
  if (msg->markers[i].id == 6)
  {
  m6.header = msg->header;
  m6.header.frame_id = "ar_marker_6";
  m6.pose.pose.position = msg->markers[i].pose.pose.position;
  m6.pose.pose.orientation = msg->markers[i].pose.pose.orientation;
  for(counter=0; counter < 36; counter ++)
  {
      if(counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
      {
          m6.pose.covariance[counter] = 0;
      }
  }
  // set diagonals

  m6.pose.covariance[7] = 0.001;
  m6.pose.covariance[14] = 0.001;
  m6.pose.covariance[21] = 0.001;
  m6.pose.covariance[28] = 0.001;
  m6.pose.covariance[35] = 0.001;
  
  marker6_pub.publish(m6);
//ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m4.pose.pose.position.x, m4.pose.pose.position.y, m4.pose.pose.position.z, m4.pose.pose.orientation.x, m4.pose.pose.orientation.y,m4.pose.pose.orientation.z);
 }
 if (msg->markers[i].id == 7)
 {
 m7.header = msg->header;
 m7.header.frame_id = "ar_marker_7";
 m7.pose.pose.position = msg->markers[i].pose.pose.position;
 m7.pose.pose.orientation = msg->markers[i].pose.pose.orientation;
 for(counter=0; counter < 36; counter ++)
 {
     if(counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
     {
         m7.pose.covariance[counter] = 0;
     }
 }
 // set diagonals

 m7.pose.covariance[7] = 0.001;
 m7.pose.covariance[14] = 0.001;
 m7.pose.covariance[21] = 0.001;
 m7.pose.covariance[28] = 0.001;
 m7.pose.covariance[35] = 0.001;
 
 marker7_pub.publish(m7);
//ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m4.pose.pose.position.x, m4.pose.pose.position.y, m4.pose.pose.position.z, m4.pose.pose.orientation.x, m4.pose.pose.orientation.y,m4.pose.pose.orientation.z);
}
if (msg->markers[i].id == 8)
{
    m8.header = msg->header;
m8.header.frame_id = "ar_marker_8";
m8.pose.pose.position = msg->markers[i].pose.pose.position;
m8.pose.pose.orientation = msg->markers[i].pose.pose.orientation;
for(counter=0; counter < 36; counter ++)
{
    if(counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
    {
        m8.pose.covariance[counter] = 0;
    }
}
// set diagonals

m8.pose.covariance[7] = 0.001;
m8.pose.covariance[14] = 0.001;
m8.pose.covariance[21] = 0.001;
m8.pose.covariance[28] = 0.001;
m8.pose.covariance[35] = 0.001;

marker8_pub.publish(m8);
//ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m4.pose.pose.position.x, m4.pose.pose.position.y, m4.pose.pose.position.z, m4.pose.pose.orientation.x, m4.pose.pose.orientation.y,m4.pose.pose.orientation.z);
}

} //end of external foor loop
}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "subscriber");


  Converter convert;  
  int desidered_freq = 15.0;

  ros::Rate r(desidered_freq);

  while (ros::ok())
  {
    ros::spinOnce();
    r.sleep();
  } 
  return 0;
}
