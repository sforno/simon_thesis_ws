/*
Understanding how to make a dynamic transform from SelfLocalizer code
*/

// get the map frame from the parameter server using the "param" method
ros::NodeHandle globalNode;
globalNode.param("map_frame", mMapFrame, std::string("map"));

// param (frame to be searched on the param server, storage of the value, value to use if server does not contain this parameter)

mTransformListener.waitForTransform(mRobotFrame, mLaserFrame, ros::Time(0), ros::Duration(5.0)); // (detination frame, original)

// Create the map --> odom transform, how this is done is requesting the map --> base_link and then substract odom --> base_link

tf::Transform map2robot = getBestPose();
tf::Stamped<tf::Pose> odom2map;
try
{
    tf::Stamped<tf::Pose> robot2map;
    robot2map.setData(map2robot.inverse());
    robot2map.stamp_ = scan->header.stamp;
    robot2map.frame_id_ = mRobotFrame;

    mTransformListener.transformPose(mOdometryFrame, robot2map, odom2map);
    mMapToOdometry = odom2map.inverse();
}
catch(tf::TransformException)
{
    ROS_WARN("Failed to subtract base to odom transform");
}

/* The code explained
   15: map2robot tranform made with map2robot.setOrigin(tf::Vector3(pose.v[0], pose.v[1], 0)), map2robot.setRotation(tf::createQuaternionFromYaw(pose.v[2])), where pose.v[] are particles poses
   
   The core is in the transformPose function, line 24: this takes as input the robot2map messages and translates it to the target frame:mOdometryFrame, the result is stored in odom2map. 
   This is not a subtraction, but since the odom2robot is known by Ekf, the end result is pretty much the same. The to get the map2odom simple invert it.
   
*/


listener.lookupTransform("/turtle2", "/turtle1", ros::Time(0), transform); 

/* get the transform and save it into the "transform" object, first argument: destination frame, second: original frame
   Save the turtle1 -> turtle2 transformation, or turtle1 to turtle2, turtle1 parent turtle2 child   
*/


/*
Understanding how Amcl saved the last updates transform
*/


// Questions

// 1) What is this doing? 
tf::Stamped<tf::Pose> tmp_tf_stamped (tmp_tf.inverse(),
laser_scan->header.stamp,
base_frame_id_);




// Organization

// 1) Initializers

tf::Stamped<tf::Pose> latest_odom_pose_; // uses this to store last odom pose
std::string global_frame_id_; // global frame

geometry_msgs::PoseWithCovarianceStamped last_published_pose; // defines this message type


// Amcl::Pose2Server method
tf::Pose map_pose = latest_tf_.inverse() * latest_odom_pose_; // line 695

// Amcl::LaserReceived method

// We need to apply the last transform to the latest odom pose to get
// the latest map pose to store.  We'll take the covariance from
// last_published_pose.

latest_tf_ = tf::Transform(tf::Quaternion(odom_to_map.getRotation()),
tf::Point(odom_to_map.getOrigin())); //line 1377



// Dynamic tf - using Sriram approach

/*
void Dynamic_tf::robot_callback(const nav_msgs::Odometry::ConstPtr & msg)
{
  geometry_msgs::PoseWithCovarianceStamped  rob_pose; //goal: get a preliminary map2robot tf
  tf::TransformListener listener;
  tf::TransformBroadcaster broadcaster;
  tf::Stamped<tf::Pose> map2robot; 

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


  map2robot.setOrigin(tf::Vector3(rob_pose.pose.pose.position.x, rob_pose.pose.pose.position.y, 0));
  map2robot.setRotation(tf::Quaternion(rob_pose.pose.pose.orientation.x,rob_pose.pose.pose.orientation.y,rob_pose.pose.pose.orientation.z,1));
  // Publish the message to check if map2robot is set correctly
  rob_pub.publish(rob_pose); //message is published correctly!
  
  //br.sendTransform(tf::StampedTransform(map2robot,ros::Time::now(),"map","odom")); By doing so I get the map2odom progressively grow as robot2odom
  ROS_INFO("map2robot_x: %f, map2robot_y: %f", map2robot.getOrigin().x(),map2robot.getOrigin().y()); //correct
  i = i+1;
  //now get the inverse and save the map coords
  robot2map.setData(map2robot.inverse());
  robot2map.frame_id_= mRobotFrame.c_str();
  ROS_INFO("robot2map_x: %f, robot2map_y: %f", robot2map.getOrigin().x(),robot2map.getOrigin().y()); // I am expecting here 0,0 and but just getting reversed coords
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
  } 

  // send the transform over the wire
 // broadcaster.sendTransform(tf::StampedTransform(map2marker,ros::Time::now(),"map","ar_marker_1"));

} */