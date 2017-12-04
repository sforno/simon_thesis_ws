// globalplanner soruce

#include <pluginlib/class_list_macros.h>
#include <../include/globalplanner/globalplanner.h>
// #include </home/simoneforno/simon_ws/src/globalplanner/include/globalplanner/globalplanner.h>

//register this planner as a BaseGlobalPlanner plugin
PLUGINLIB_EXPORT_CLASS(globalplanner::GlobalPlanner, nav_core::BaseGlobalPlanner)

using namespace std;

//Default Constructor
namespace globalplanner {

GlobalPlanner::GlobalPlanner (){


  //cout << i;
  //ROS_INFO("%d",i);

}

GlobalPlanner::GlobalPlanner(std::string name, costmap_2d::Costmap2DROS* costmap_ros){
  initialize(name, costmap_ros);
}


void GlobalPlanner::initialize(std::string name, costmap_2d::Costmap2DROS* costmap_ros){
 
}

bool GlobalPlanner::makePlan(const geometry_msgs::PoseStamped& start, const geometry_msgs::PoseStamped& goal,  std::vector<geometry_msgs::PoseStamped>& plan ){


   plan.push_back(start);
  for (int i=0; i<41; i++){
    geometry_msgs::PoseStamped new_goal = goal;
    tf::Quaternion goal_quat = tf::createQuaternionFromYaw(1.54);

     new_goal.pose.position.x = (0.05*i);
     new_goal.pose.position.y = 0;

     new_goal.pose.orientation.x = goal_quat.x();
     new_goal.pose.orientation.y = goal_quat.y();
     new_goal.pose.orientation.z = goal_quat.z();
     new_goal.pose.orientation.w = goal_quat.w();

    // ROS_INFO("%d",i); cout << i; not able when launching move_base node to see the output on the terminal
  
    //cout << i;
    //ROS_INFO("%d",i);

    if(i==40 && j!=41){
      new_goal.pose.position.x = (0.05*i);

      for(j=0;j<41;j++){
        new_goal.pose.position.y = (0.05*j);
        
        plan.push_back(new_goal);

        if(j==40 && z!=41){
          new_goal.pose.position.y = (0.05*j);

          for(z=0;z<41;z++){
            new_goal.pose.position.x = (0.05*i + 0.05*z);

            plan.push_back(new_goal);

          }
        }
      }
    }


   plan.push_back(new_goal);
  }

  // plan.push_back(new_goal);



  // plan.push_back(goal);
 return true;
}
};
