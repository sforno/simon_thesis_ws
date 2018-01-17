#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <geometry_msgs/Pose.h>
#include <sensor_msgs/LaserScan.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/String.h>
#include <std_msgs/Int32.h>
#include <sensor_msgs/Imu.h>
#include </home/simoneforno/simon_ws/devel/include/ar_track_alvar_msgs/AlvarMarkers.h>
#include </home/simoneforno/simon_ws/devel/include/ar_track_alvar_msgs/AlvarMarker.h>
#include </home/simoneforno/simon_ws/src/data_converter/include/AlvarMarker.h>
#include </home/simoneforno/simon_ws/src/data_converter/include/AlvarMarkers.h>
#include <math.h>
#include <tf/transform_datatypes.h>
#include <tf/transform_listener.h>
#include <tf/transform_broadcaster.h>
#include <tf/LinearMath/Quaternion.h>
#include <tf/LinearMath/Vector3.h>
#include <string.h>

#include <iostream>
#include <fstream>

//typedef::ar_track_alvar::AlvarMarker;
//typedef boost::shared_ptr< ::ar_track_alvar_msgs::AlvarMarker_<ContainerAllocator> const> ConstPtr;

class Converter
{
public:
    // Variables
    ros::NodeHandle nh_;
    ros::Subscriber ar_pose_sub;
    // Write publishers for each of the 4 Markers
    ros::Publisher marker1_pub;
    ros::Publisher marker2_pub;
    //ros::Publisher marker3_pub;
    //ros::Publisher marker4_pub;

    float desired_freq_;

    //Methods, advertise and subscribe to topics
    Converter()
    {
        desired_freq_= 5.0;
        //Subscriber
        ar_pose_sub = nh_.subscribe < ar_track_alvar::AlvarMarkers > ("/ar_pose_marker", 1, ar_pose_callback, this); // defined the callback along with the methods

        //Publishers 
        marker1_pub = nh_.advertise < geometry_msgs::PoseWithCovariance > ("/marker1", 1);
        marker2_pub = nh_.advertise < geometry_msgs::PoseWithCovariance > ("/marker2", 1);
        //marker3_pub = nh_.advertise < geometry_msgs::PoseWithCovariance > ("/marker3", 1);
        //marker4_pub = nh_.advertise < geometry_msgs::PoseWithCovariance > ("/marker4", 1);

        ROS_INFO("Setup finished");
    };

    void start()
    {
      ros::Rate r(desired_freq_);
      while (ros::ok())
      {
        ros::spinOnce();
        r.sleep();
      }
    
      ros::shutdown();
    };
    
    void ar_pose_callback(const ar_track_alvar::AlvarMarkers::ConstPtr & msg)
    {
        // Data structure for the

        geometry_msgs::PoseWithCovariance  m1;
        geometry_msgs::PoseWithCovariance  m2;
        //geometry_msgs::PoseWithCovariance  m3;
        //geometry_msgs::PoseWithCovariance  m4;
        // Set variables
        //int size = msg->markers.size();

        // Frames
        //string camera_frame("camera_frame_optical");

        // Take markers data

        //  for(int i = 0; i < size; i+)
        // Save first marker data
        m1.header = msg->header;
        m1.pose.pose.position.x = msg->markers[0].pose.pose.position.x;
        m1.pose.pose.position.y = msg->markers[0].pose.pose.position.y;
        m1.pose.pose.position.z = msg->markers[0].pose.pose.position.z;
        m1.pose.pose.orientation.x = msg->markers[0].pose.pose.orientation.x;
        m1.pose.pose.orientation.y = msg->markers[0].pose.pose.orientation.y;
        m1.pose.pose.orientation.z = msg->markers[0].pose.pose.orientation.z;

        // m1.covariance = 
        
        ROS_INFO("x: %f, y: %f, z: %f, ",m1.pose.pose.position.x,m1.pose.pose.position.y,m1.pose.pose.position.z);

        //marker1_pub.publish(m1);
      
    }

};

// ---- TESTING THE 4 MARKERS detection ----
/* 1. Create differ message tzpe for each of the 4 markers
   2. Save data and covariances
   3. Create different publishers
   4. See the output

*/ 

int main(int argc, char **argv)
{
  ros::init(argc, argv, "converter");


  Converter convert = Converter();

  convert.start();

  return 0;
}
