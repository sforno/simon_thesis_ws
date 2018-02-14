// simple broadcaster

#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <turtlesim/Pose.h>

std::string turtle_name;



void poseCallback(const turtlesim::PoseConstPtr& msg){
  static tf::TransformBroadcaster br;
/*read map frame coordinate as present_coordinates;
  diff= present_co -prev_co;
  prev_co = presnet_co;*/
  tf::Transform transform;
  transform.setOrigin( tf::Vector3(msg->x, msg->y, 0.0) ); //transform.setOrigin( tf::Vector3(diff.x+5, diff.y+0, 0.0) );
  tf::Quaternion q;
  q.setRPY(0, 0, msg->theta); //q.setRPY(0, 0, diff.theta);
  transform.setRotation(q);
  br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "world", turtle_name)); //br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "map", "artrag"));

  // print quaternions of the transform

  //double roll, pitch, yawn;
  //transform.getBasis().getRPY(roll,pitch,yawn);

  //ROS_INFO("Roll: %f, Pitch: %f, Yawn: %f",roll,pitch,yawn); // this works! Outputs are in radiants, angles are calucalate following the transform world -> turtle, hence sitting on world frame what should I see

  ROS_INFO("Normal x: %f, y: %f, theta: %f", transform.getOrigin().x(),transform.getOrigin().y(),tf::getYaw(transform.getRotation()));
  ROS_INFO("Should look the same as above x: %f, y: %f, theta: %f", msg->x,msg->y, msg-> theta);

  // make an inverse transform to see the output
  tf::Pose inv = transform.inverse();
  
  ROS_INFO("Inversed x: %f, y: %f, theta: %f", inv.getOrigin().getX(),inv.getOrigin().getY(),tf::getYaw(inv.getRotation()));


}

int main(int argc, char** argv){
  ros::init(argc, argv, "my_tf_broadcaster");
  if (argc != 2){ROS_ERROR("need turtle name as argument"); return -1;};
  turtle_name = argv[1];

  ros::NodeHandle node;
  ros::Subscriber sub = node.subscribe(turtle_name+"/pose", 10, &poseCallback);

  ros::spin();
  return 0;
};
