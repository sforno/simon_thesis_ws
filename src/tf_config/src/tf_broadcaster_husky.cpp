/*

Trying to use the estimated marker pose from the Kinect to get the estimated robot pose

Author: Simone Forno


*/

#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <tf/transform_listener.h>


void poseCallback(const geometry_msgs::PoseWithCovarianceStamped::ConstPtr & msg){

/* static tf::TransformBroadcaster br;
  tf::Transform transform;
  transform.setOrigin( tf::Vector3(msg->x, msg->y, 0.0) );
  tf::Quaternion q;
  q.setRPY(0, 0, msg->theta);
  transform.setRotation(q);
  br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "map", turtle_name)); */
  
  static tf::TransformBroadcaster br;
  tf::TransformListener list;
  tf::StampedTransform inverse;
  std::string markerFrame = "ar_marker_final";

if(msg->header.frame_id == "ar_marker_1") {

  double tx = msg->pose.pose.position.x;
  double ty = msg->pose.pose.position.y;
  double tz = msg->pose.pose.position.z;
  double rx = msg->pose.pose.orientation.x;
  double ry = msg->pose.pose.orientation.y;
  double rz = msg->pose.pose.orientation.z;
  double rw = msg->pose.pose.orientation.w;


  // Define a tf transform object to set marker_1 -> base_link transform

  tf::Quaternion rotation (rx,ry,rz,rw);
  tf::Vector3 origin (tx,ty,tz);
  tf::Transform t (rotation,origin);

  br.sendTransform(tf::StampedTransform(t, ros::Time::now(),"base_link",markerFrame.c_str())); // send the transform over the wire

  // Get rotations from quaternions and transform them in RPY

  //double roll, pitch, yawn;
  //t.getBasis().getRPY(roll,pitch,yawn);
  //ROS_INFO("Roll: %f, Pitch: %f, Yawn: %f",roll,pitch,yawn); //print to check results

}

}

int main(int argc, char** argv){

  ros::init(argc, argv, "husky_tf");

  ros::NodeHandle nh_;
  ros::Subscriber sub = nh_.subscribe("/marker1", 10, &poseCallback);
  //tf_broadcaster = new tf::TransformBroadcaster();

  ros::Rate r(15);

  while (ros::ok())
  {
    ros::spinOnce();
    r.sleep();
  } 
  return 0;
};
