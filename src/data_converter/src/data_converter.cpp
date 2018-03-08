#include <ros/ros.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <nav_msgs/Odometry.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/String.h>
#include <std_msgs/Int32.h>
#include <ar_track_alvar_msgs/AlvarMarkers.h>
#include <ar_track_alvar_msgs/AlvarMarker.h>
#include <math.h>
#include <string.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_datatypes.h>

#include <iostream>
#include <fstream>

#include <tf/transform_listener.h>
#include <tf/transform_datatypes.h>
#include <tf/time_cache.h>


class Converter
{
public:
    // Variables
    ros::NodeHandle nh_;
    ros::Subscriber ar_pose_sub;
    ros::Publisher marker1_pub;
    ros::Publisher marker2_pub;
    ros::Publisher marker3_pub;
    ros::Publisher marker4_pub;
    /* ros::Publisher marker5_pub;
    ros::Publisher marker6_pub;
    ros::Publisher marker7_pub;
    ros::Publisher marker8_pub;
    ros::Publisher marker9_pub;
    ros::Publisher marker10_pub;
    ros::Publisher marker11_pub;
    ros::Publisher marker12_pub;
    ros::Publisher marker13_pub;
    ros::Publisher marker14_pub; */


    // Tf objects
    
    tf::TransformListener listener;
    tf::StampedTransform marker_one2base;
    tf::StampedTransform marker_two2base;
    tf::StampedTransform marker_three2base;
    tf::StampedTransform marker_four2base;

    int counter;
    int index;
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
        /*marker5_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker5", 1);
        marker6_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker6", 1);
        marker7_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker7", 1);
        marker8_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker8", 1);
        marker9_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker9", 1);
        marker10_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker10", 1);
        marker11_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker11", 1);
        marker12_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker12", 1);
        marker13_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker13", 1);
        marker14_pub = nh_.advertise < geometry_msgs::PoseWithCovarianceStamped > ("/marker14", 1); */

        ROS_INFO("Setup finished");
        
    };
    };
    
 void Converter::ar_pose_callback(const ar_track_alvar_msgs::AlvarMarkers::ConstPtr & msg)
{
    geometry_msgs::PoseWithCovarianceStamped  m1, m2, m3, m4; // m5, m6, m7, m8, m9, m10, m11, m12, m13, m14; // define a PosewithCovariance message

    int size = msg->markers.size();
    for(int index = 0; index< size; index ++)
    {
    if (msg->markers[index].id == 1)
    {
    
    m1.header = msg->header;
    m1.header.frame_id = "map";
    
    //feed the message with the translationa and rotation of the lookup tranform
    try{
    listener.waitForTransform("/world_marker_1", "/base_link", msg->header.stamp, ros::Duration(10.0)); 
    listener.lookupTransform("/world_marker_1","/base_link",msg->header.stamp,marker_one2base);
    }

    catch (tf::TransformException &ex) {
          ROS_ERROR("%s",ex.what());
          ros::Duration(1.0).sleep();
        }

    m1.pose.pose.position.x = marker_one2base.getOrigin().x();
    m1.pose.pose.position.y = marker_one2base.getOrigin().y();
    m1.pose.pose.position.z = marker_one2base.getOrigin().z();
    m1.pose.pose.orientation.x = marker_one2base.getRotation().x();
    m1.pose.pose.orientation.y = marker_one2base.getRotation().y();
    m1.pose.pose.orientation.z = marker_one2base.getRotation().z();
    m1.pose.pose.orientation.w = marker_one2base.getRotation().w();

    for(counter=0; counter < 36; counter ++)
    {
        if(counter != 0 && counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
        {
            m1.pose.covariance[counter] = 0;
        }
    }
    // set diagonals
    m1.pose.covariance[0] = 0.001;
    m1.pose.covariance[7] = 0.001;
    m1.pose.covariance[14] = 0.001;
    m1.pose.covariance[21] = 0.001;
    m1.pose.covariance[28] = 0.001;
    m1.pose.covariance[35] = 0.001;
    

    marker1_pub.publish(m1);
 //ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m1.pose.pose.position.x, m1.pose.pose.position.y, m1.pose.pose.position.z, m1.pose.pose.orientation.x, m1.pose.pose.orientation.y,m1.pose.pose.orientation.z);
    }
    if (msg->markers[index].id == 2)
    {
    m2.header = msg->header;
    m2.header.frame_id = "map";
    
    //feed the message with the translationa and rotation of the lookup tranform
    try{
    listener.waitForTransform("/world_marker_2", "/base_link", msg->header.stamp, ros::Duration(10.0)); 
    listener.lookupTransform("/world_marker_2","/base_link",msg->header.stamp,marker_two2base);
    }

    catch (tf::TransformException &ex) {
          ROS_ERROR("%s",ex.what());
          ros::Duration(1.0).sleep();
        }

    m2.pose.pose.position.x = marker_two2base.getOrigin().x();
    m2.pose.pose.position.y = marker_two2base.getOrigin().y();
    m2.pose.pose.position.z = marker_two2base.getOrigin().z();
    m2.pose.pose.orientation.x = marker_two2base.getRotation().x();
    m2.pose.pose.orientation.y = marker_two2base.getRotation().y();
    m2.pose.pose.orientation.z = marker_two2base.getRotation().z();
    m2.pose.pose.orientation.w = marker_two2base.getRotation().w();

    for(counter=0; counter < 36; counter ++)
    {
        if(counter != 0 && counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
        {
            m2.pose.covariance[counter] = 0;
        }
    }
    // set diagonals

    m2.pose.covariance[0] = 0.001;
    m2.pose.covariance[7] = 0.001;
    m2.pose.covariance[14] = 0.001;
    m2.pose.covariance[21] = 0.001;
    m2.pose.covariance[28] = 0.001;
    m2.pose.covariance[35] = 0.001;

    marker2_pub.publish(m2);
//ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m2.pose.pose.position.x, m2.pose.pose.position.y, m2.pose.pose.position.z, m2.pose.pose.orientation.x, m2.pose.pose.orientation.y,m2.pose.pose.orientation.z);
    }
    if (msg->markers[index].id == 3)
    {

        m3.header = msg->header;
        m3.header.frame_id = "map";
        
        //feed the message with the translationa and rotation of the lookup tranform
        try{
        listener.waitForTransform("/world_marker_3", "/base_link", msg->header.stamp, ros::Duration(10.0)); 
        listener.lookupTransform("/world_marker_3","/base_link",msg->header.stamp,marker_three2base);
        }
    
        catch (tf::TransformException &ex) {
              ROS_ERROR("%s",ex.what());
              ros::Duration(1.0).sleep();
            }
    
        m3.pose.pose.position.x = marker_three2base.getOrigin().x();
        m3.pose.pose.position.y = marker_three2base.getOrigin().y();
        m3.pose.pose.position.z = marker_three2base.getOrigin().z();
        m3.pose.pose.orientation.x = marker_three2base.getRotation().x();
        m3.pose.pose.orientation.y = marker_three2base.getRotation().y();
        m3.pose.pose.orientation.z = marker_three2base.getRotation().z();
        m3.pose.pose.orientation.w = marker_three2base.getRotation().w();
    
    for(counter=0; counter < 36; counter ++)
    {
        if(counter != 0 && counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
        {
            m3.pose.covariance[counter] = 0;
        }
    }
    // set diagonals
    m3.pose.covariance[0] = 0.001;
    m3.pose.covariance[7] = 0.001;
    m3.pose.covariance[14] = 0.001;
    m3.pose.covariance[21] = 0.001;
    m3.pose.covariance[28] = 0.001;
    m3.pose.covariance[35] = 0.001;

    marker3_pub.publish(m3);
 //ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m3.pose.pose.position.x, m3.pose.pose.position.y, m3.pose.pose.position.z, m3.pose.pose.orientation.x, m3.pose.pose.orientation.y,m3.pose.pose.orientation.z);
    }
    if (msg->markers[index].id == 4)
    {
        m4.header = msg->header;
        m4.header.frame_id = "map";
        
        //feed the message with the translationa and rotation of the lookup tranform
        try{
        listener.waitForTransform("/world_marker_4", "/base_link", msg->header.stamp, ros::Duration(10.0)); 
        listener.lookupTransform("/world_marker_4","/base_link",msg->header.stamp,marker_four2base);
        }
    
        catch (tf::TransformException &ex) {
              ROS_ERROR("%s",ex.what());
              ros::Duration(1.0).sleep();
            }
    
        m4.pose.pose.position.x = marker_four2base.getOrigin().x();
        m4.pose.pose.position.y = marker_four2base.getOrigin().y();
        m4.pose.pose.position.z = marker_four2base.getOrigin().z();
        m4.pose.pose.orientation.x = marker_four2base.getRotation().x();
        m4.pose.pose.orientation.y = marker_four2base.getRotation().y();
        m4.pose.pose.orientation.z = marker_four2base.getRotation().z();
        m4.pose.pose.orientation.w = marker_four2base.getRotation().w();
    
    for(counter=0; counter < 36; counter ++)
    {
        if(counter != 0 && counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
        {
            m4.pose.covariance[counter] = 0;
        }
    }
    // set diagonals
    m4.pose.covariance[0] = 0.001;
    m4.pose.covariance[7] = 0.001;
    m4.pose.covariance[14] = 0.001;
    m4.pose.covariance[21] = 0.001;
    m4.pose.covariance[28] = 0.001;
    m4.pose.covariance[35] = 0.001;
    
    marker4_pub.publish(m4);
 //ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m4.pose.pose.position.x, m4.pose.pose.position.y, m4.pose.pose.position.z, m4.pose.pose.orientation.x, m4.pose.pose.orientation.y,m4.pose.pose.orientation.z);
   } 
   /*if (msg->markers[i].id == 5)
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

if (msg->markers[i].id == 9)
{
    m9.header = msg->header;
m9.header.frame_id = "ar_marker_9";
m9.pose.pose.position = msg->markers[i].pose.pose.position;
m9.pose.pose.orientation = msg->markers[i].pose.pose.orientation;
for(counter=0; counter < 36; counter ++)
{
    if(counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
    {
        m9.pose.covariance[counter] = 0;
    }
}
// set diagonals

m9.pose.covariance[7] = 0.001;
m9.pose.covariance[14] = 0.001;
m9.pose.covariance[21] = 0.001;
m9.pose.covariance[28] = 0.001;
m9.pose.covariance[35] = 0.001;

marker9_pub.publish(m9);
//ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m4.pose.pose.position.x, m4.pose.pose.position.y, m4.pose.pose.position.z, m4.pose.pose.orientation.x, m4.pose.pose.orientation.y,m4.pose.pose.orientation.z);
}

if (msg->markers[i].id == 10)
{
    m10.header = msg->header;
m10.header.frame_id = "ar_marker_10";
m10.pose.pose.position = msg->markers[i].pose.pose.position;
m10.pose.pose.orientation = msg->markers[i].pose.pose.orientation;
for(counter=0; counter < 36; counter ++)
{
    if(counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
    {
        m10.pose.covariance[counter] = 0;
    }
}
// set diagonals

m10.pose.covariance[7] = 0.001;
m10.pose.covariance[14] = 0.001;
m10.pose.covariance[21] = 0.001;
m10.pose.covariance[28] = 0.001;
m10.pose.covariance[35] = 0.001;

marker10_pub.publish(m10);
//ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m4.pose.pose.position.x, m4.pose.pose.position.y, m4.pose.pose.position.z, m4.pose.pose.orientation.x, m4.pose.pose.orientation.y,m4.pose.pose.orientation.z);
}

if (msg->markers[i].id == 11)
{
    m11.header = msg->header;
m11.header.frame_id = "ar_marker_11";
m11.pose.pose.position = msg->markers[i].pose.pose.position;
m11.pose.pose.orientation = msg->markers[i].pose.pose.orientation;
for(counter=0; counter < 36; counter ++)
{
    if(counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
    {
        m11.pose.covariance[counter] = 0;
    }
}
// set diagonals

m11.pose.covariance[7] = 0.001;
m11.pose.covariance[14] = 0.001;
m11.pose.covariance[21] = 0.001;
m11.pose.covariance[28] = 0.001;
m11.pose.covariance[35] = 0.001;

marker11_pub.publish(m12);
//ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m4.pose.pose.position.x, m4.pose.pose.position.y, m4.pose.pose.position.z, m4.pose.pose.orientation.x, m4.pose.pose.orientation.y,m4.pose.pose.orientation.z);
}

if (msg->markers[i].id == 12)
{
    m12.header = msg->header;
m12.header.frame_id = "ar_marker_12";
m12.pose.pose.position = msg->markers[i].pose.pose.position;
m12.pose.pose.orientation = msg->markers[i].pose.pose.orientation;
for(counter=0; counter < 36; counter ++)
{
    if(counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
    {
        m12.pose.covariance[counter] = 0;
    }
}
// set diagonals

m12.pose.covariance[7] = 0.001;
m12.pose.covariance[14] = 0.001;
m12.pose.covariance[21] = 0.001;
m12.pose.covariance[28] = 0.001;
m12.pose.covariance[35] = 0.001;

marker12_pub.publish(m12);
//ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m4.pose.pose.position.x, m4.pose.pose.position.y, m4.pose.pose.position.z, m4.pose.pose.orientation.x, m4.pose.pose.orientation.y,m4.pose.pose.orientation.z);
}

if (msg->markers[i].id == 13)
{
    m13.header = msg->header;
m13.header.frame_id = "ar_marker_13";
m13.pose.pose.position = msg->markers[i].pose.pose.position;
m13.pose.pose.orientation = msg->markers[i].pose.pose.orientation;
for(counter=0; counter < 36; counter ++)
{
    if(counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
    {
        m13.pose.covariance[counter] = 0;
    }
}
// set diagonals

m13.pose.covariance[7] = 0.001;
m13.pose.covariance[14] = 0.001;
m13.pose.covariance[21] = 0.001;
m13.pose.covariance[28] = 0.001;
m13.pose.covariance[35] = 0.001;

marker13_pub.publish(m13);
//ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m4.pose.pose.position.x, m4.pose.pose.position.y, m4.pose.pose.position.z, m4.pose.pose.orientation.x, m4.pose.pose.orientation.y,m4.pose.pose.orientation.z);
}

if (msg->markers[i].id == 14)
{
    m14.header = msg->header;
m14.header.frame_id = "ar_marker_14";
m14.pose.pose.position = msg->markers[i].pose.pose.position;
m14.pose.pose.orientation = msg->markers[i].pose.pose.orientation;
for(counter=0; counter < 36; counter ++)
{
    if(counter != 7 && counter != 14 && counter != 21 && counter != 28 && counter != 35)
    {
        m14.pose.covariance[counter] = 0;
    }
}
// set diagonals

m14.pose.covariance[7] = 0.001;
m14.pose.covariance[14] = 0.001;
m14.pose.covariance[21] = 0.001;
m14.pose.covariance[28] = 0.001;
m14.pose.covariance[35] = 0.001;

marker14_pub.publish(m14);
//ROS_INFO("x: %f, y: %f, z: %f,rot_x: %f,rot_y: %f,rot_z: %f",m4.pose.pose.position.x, m4.pose.pose.position.y, m4.pose.pose.position.z, m4.pose.pose.orientation.x, m4.pose.pose.orientation.y,m4.pose.pose.orientation.z);
}
*/
} //end of external foor loop

// ROS_INFO("Size: %d",size);
}//end ar_pose_callback


int main(int argc, char **argv)
{
  ros::init(argc, argv, "data_converter");

  Converter convert;  
  int desidered_freq = 30.0;

  ros::Rate r(desidered_freq);

  while (ros::ok())
  {
    //ROS_INFO("Size: %d",size);
    ros::spinOnce();
    r.sleep();
  } 
  return 0;
}
