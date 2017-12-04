#include <ros/ros.h>
#include <visualization_msgs/Marker.h>

#include <ros/ros.h>
#include <visualization_msgs/Marker.h>

#include <cmath>

int main( int argc, char** argv )
{
  ros::init(argc, argv, "points");
  ros::NodeHandle n;
  ros::Publisher marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker", 10);

  ros::Rate r(1); // This keeps in maintainig the while loop at 1 Hz frequency

  // float f = 0.0;

  while (ros::ok())
  {

    visualization_msgs::Marker points;
    points.header.frame_id = "odom";
    points.header.stamp = ros::Time::now();
    points.ns = "points";
    points.action = visualization_msgs::Marker::ADD;
    points.pose.orientation.w = 1.0;

    points.id = 0;
    points.type = visualization_msgs::Marker::POINTS;

    // POINTS markers use x and y scale for width/height respectively
    points.scale.x = 0.2;
    points.scale.y = 0.2;

    // Points are green
    points.color.g = 1.0f;
    points.color.a = 1.0;

    geometry_msgs::Point p;

    uint32_t j;
    uint32_t k;
    uint32_t z;

    // Create the vertices for the points and lines
     for (uint32_t i = 0; i < 38; ++i)
    {
      p.x = (int32_t)i;
      p.y = 0;
      p.z = 0;

      if(i==37 && j!=14){
        p.x = i; // ROS_DEBUG("i: %d",i);
        
        for(uint32_t j=0; j < 14; j++){
          p.y = (int32_t)j;
          points.points.push_back(p);

          if(j==13 && z!=11){
            p.y=j;

            for(uint32_t z=0;z<11;z++){
              p.x = i-z;
              points.points.push_back(p);

              if(z==10 && k!=6){
                p.x = i-z;
                p.y = j;

                for(uint32_t k=0;k<6;k++){
                  p.y = j-k;
                  points.points.push_back(p);
                }
                
              }
            }
        }
      }
    }


      points.points.push_back(p);
    }

    marker_pub.publish(points);
    r.sleep(); 
  }
}


  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  /*
  
  ros::Publisher marker_pub_one = n.advertise<visualization_msgs::Marker>("visualization_marker", 1);
  //ros::Publisher marker_pub_one = n.advertise<visualization_msgs::Marker>("visualization_marker", 1);

  // Set our initial shape type to be a cube
  uint32_t shape = visualization_msgs::Marker::CUBE;

  while (ros::ok())
  {
    visualization_msgs::Marker marker_one;
    visualization_msgs::Marker marker_two;
    // Set the frame ID and timestamp.  See the TF tutorials for information on these.
    marker_one.header.frame_id = "/odom";
    marker_one.header.stamp = ros::Time::now();

    marker_two.header.frame_id = "/odom";
    marker_two.header.stamp = ros::Time::now();

    // Set the namespace and id for this marker.  This serves to create a unique ID
    // Any marker sent with the same namespace and id will overwrite the old one
    marker_one.ns = "first marker";
    marker_one.id = 0;

    marker_two.ns = "second_marker";
    marker_two.id = 1;

    // Set the marker type.  Initially this is CUBE, and cycles between that and SPHERE, ARROW, and CYLINDER
    marker_one.type = shape;
    marker_two.type = shape;
    shape = visualization_msgs::Marker::CUBE;

    // Set the marker action.  Options are ADD, DELETE, and new in ROS Indigo: 3 (DELETEALL)
    marker_one.action = visualization_msgs::Marker::ADD;
    marker_two.action = visualization_msgs::Marker::ADD;

    // Set the pose of the marker_one.  This is a full 6DOF pose relative to the frame/time specified in the header
    marker_one.pose.position.x = 1;
    marker_one.pose.position.y = 0;
    marker_one.pose.position.z = 0;
    marker_one.pose.orientation.x = 0.0;
    marker_one.pose.orientation.y = 0.0;
    marker_one.pose.orientation.z = 0.0;
    marker_one.pose.orientation.w = 0.0;

    // Set the scale of the marker -- 1x1x1 here means 1m on a side
    marker_one.scale.x = 1.0;
    marker_one.scale.y = 1.0;
    marker_one.scale.z = 1.0;

    // Set the color -- be sure to set alpha to something non-zero!
    marker_one.color.r = 0.0f;
    marker_one.color.g = 1.0f;
    marker_one.color.b = 0.0f;
    marker_one.color.a = 1.0;

    // Set the pose of the marker_one.  This is a full 6DOF pose relative to the frame/time specified in the header
    marker_two.pose.position.x = 3;
    marker_two.pose.position.y = 0;
    marker_two.pose.position.z = 0;
    marker_two.pose.orientation.x = 0.0;
    marker_two.pose.orientation.y = 0.0;
    marker_two.pose.orientation.z = 0.0;
    marker_two.pose.orientation.w = 0.0;

    // Set the scale of the marker -- 1x1x1 here means 1m on a side
    marker_two.scale.x = 1.0;
    marker_two.scale.y = 1.0;
    marker_two.scale.z = 1.0;

    // Set the color -- be sure to set alpha to something non-zero!
    marker_two.color.r = 0.0f;
    marker_two.color.g = 1.0f;
    marker_two.color.b = 0.0f;
    marker_two.color.a = 1.0;


    marker_one.lifetime = ros::Duration();
    marker_two.lifetime = ros::Duration();

    // Publish the marker
    while (marker_pub_one.getNumSubscribers())
    {
      if (!ros::ok())
      {
        return 0;
      }
      // ROS_WARN_ONCE("Please create a subscriber to the marker");
      sleep(1);
    }
    marker_pub_one.publish(marker_one);
    //marker_pub_two.publish(marker_two);
  }

}    */