
// Feeding Ekf with odom2mark

try{
    listener.waitForTransform("/camera_link", "/ar_marker_1", ros::Time(0), ros::Duration(10.0));
    listener.lookupTransform("/camera_link", "/ar_marker_1", ros::Time(0), interm);
    ROS_INFO("Map x: %f, y: %f", interm.getOrigin().x(),interm.getOrigin().y());  // gives the markers pose into camera, correct
  }

  catch (tf::TransformException &ex) {
    ROS_ERROR("%s",ex.what());
    ros::Duration(1.0).sleep();
  }
cam2mark.setData(interm);

// Transform into odom frame
listener.transformPose("/odom",cam2mark,odom2mark); //odom2mark, marker pose into the odom frame

//Convert odom2mark into msg
geometry_msgs::PoseStamped final_msg;
poseStampedTFToMsg(odom2mark,final_msg);
//Publish