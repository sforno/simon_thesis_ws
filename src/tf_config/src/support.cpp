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