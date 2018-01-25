#ifndef OBSTACLES_H_
#define OBSTACLES_H_
#include <ros/ros.h>
#include <nav_msgs/GetMap.h>
#include <costmap_2d/costmap_2d_ros.h>
#include <costmap_2d/costmap_2d.h>
#include <navfn/navfn_ros.h>
#include <sys/stat.h>
#include <nav_msgs/MapMetaData.h>
#include "std_msgs/String.h"
#include </home/simoneforno/simon_ws/src/map_groundtruth/include/stage.hh>

#include <iostream>
#include <boost/thread/mutex.hpp>
#include <boost/thread/thread.hpp>
#include <rosgraph_msgs/Clock.h>
#define USAGE "stageros <worldfile>"
#define BASE_POSE_GROUND_TRUTH "base_pose_ground_truth"

using namespace std;

class MapFetcher{
private:
	int argc;
	char **argv;
	char *fname;
	int obstacleList[];
	ros::Time sim_time;
	ros::Publisher clock_pub_;
	std::vector<ros::Publisher> ground_truth_pubs_; 
	rosgraph_msgs::Clock clockMsg;
	boost::mutex msg_lock;        
	ros::Subscriber mapSub;
	ros::Subscriber metaSub;
	Stg::Model *groundModel;
	    
	/**Map data**/
	std::vector<uint8_t> realMap;
	std::vector<int8_t> builtMap;      
	void metaDataCallback(const nav_msgs::MapMetaData::ConstPtr& msg);
	void mapCallback(const nav_msgs::OccupancyGrid::ConstPtr& msg); 
	void setGroundTruth(); 
    
public:
	MapFetcher(int argc, char** argv, char* fname); 
	~MapFetcher();	 	
	std::vector<int8_t> getSlamMap();
	std::vector<uint8_t> getGroundTruth();
	//Map resolution;	
float resolution;
unsigned int width; // Map width [cells]    
unsigned int height; //Map height [cells]
	//unsigned int height;
};

#endif

