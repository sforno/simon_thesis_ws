#include <ros/ros.h>
#include <nav_msgs/GetMap.h>
#include <costmap_2d/costmap_2d_ros.h>
#include <costmap_2d/costmap_2d.h>
#include <navfn/navfn_ros.h>
#include <sys/stat.h>
#include <nav_msgs/MapMetaData.h>
#include "std_msgs/String.h"
#include <iostream>
#include <boost/thread/mutex.hpp>
#include <boost/thread/thread.hpp>
#include <rosgraph_msgs/Clock.h>

// libstage
#include </home/simoneforno/simon_ws/src/map_groundtruth/include/stage.hh>

#define USAGE "stageros <worldfile>"
#define BASE_POSE_GROUND_TRUTH "base_pose_ground_truth"

using namespace std;

class MapFetcher {
private:
    int argc;
    char **argv;
    char *fname;
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
    float resolution; //Map resolution  
    unsigned int width; // Map width [cells]    
    unsigned int height; //Map height [cells]
};

//Constructor.
MapFetcher::MapFetcher(int argc, char** argv, char* fname) : 
    argc(argc), 
    argv(argv),
    fname(fname),
    resolution(0),
    width(0),
    height(0) {

    ros::NodeHandle node;

    //Get the slam map's occupancy grid and its metadata.           
    metaSub = node.subscribe("map_metadata", 1, &MapFetcher::metaDataCallback, this);               
    mapSub = node.subscribe("map", 1, &MapFetcher::mapCallback, this);
    width = atoi(argv[argc - 2]); 
    height = atoi(argv[argc - 1]);

    //Wait for the map data to be fetched.
    while(resolution == 0  && ros::ok){     
        ros::spinOnce();
        sleep(2);
    }

    //Set the real map.
    setGroundTruth();
}

//Destructor
MapFetcher::~MapFetcher(){  
    //DESTROY EVERYTHING BOOM
}

//Return the real map.
std::vector<uint8_t> MapFetcher::getGroundTruth(){
    return realMap;
}

//Return the map built by slam gmapping.
std::vector<int8_t> MapFetcher::getSlamMap(){
    return builtMap;
}

/**
 * HELPER FUNCTIONS
 * **/

//Get the occupancy grid for the gmapping map.
void MapFetcher::mapCallback(const nav_msgs::OccupancyGrid::ConstPtr& msg) {
        this->builtMap = msg->data;         
}

//Get the occupancy grid metadata.
void MapFetcher::metaDataCallback(const nav_msgs::MapMetaData::ConstPtr& msg) {     
        /*this->width = msg->width;
        this->height = msg->height;*/
        /*I changed the above two values to constants because executing this code
        when the slam map was not complete caused cropping issues.*/        
        this->resolution = msg->resolution;
}

//Set the real map as displayed on Stage.
void MapFetcher::setGroundTruth(){

    ros::NodeHandle node2;      
    struct stat s; //roscpp-related bookkeeping

    //Timing parameters. 
    sim_time.fromSec(0.0);
    node2.setParam("/use_sim_time", true);
    clock_pub_ = node2.advertise<rosgraph_msgs::Clock>("/clock",10); 
    ros::WallRate r(10.0);  

    // We'll check the existence of the world file, because libstage doesn't
    // expose its failure to open it. 
    if(stat(fname, &s) != 0){
        ROS_FATAL("The world file %s does not exist.", fname);
        ROS_BREAK();
    }       

    //Initialize libstage.  
    Stg::Init(&argc-1, &argv);  

    //Load the world.
    Stg::World *world = new Stg::World; 
    (*world).Load(fname);
    (*world).Start();   
    groundModel = (*world).GetModel(argv[argc - 3]);    

    //Rasterize the floor model.        
    uint8_t raster[this->width * this->height];
    Stg::meters_t cellwidth = this->resolution;
    Stg::meters_t cellheight = this->resolution; 
    (*groundModel).Rasterize(raster, this->width, this->height, cellwidth, cellheight);     
    std::vector<uint8_t> temp(raster, raster + sizeof(raster) / sizeof(raster[0]));     
    this->realMap = temp;

}
