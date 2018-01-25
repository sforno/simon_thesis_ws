#include <ros/ros.h>
#include <nav_msgs/GetMap.h>
#include <costmap_2d/costmap_2d_ros.h>
#include <costmap_2d/costmap_2d.h>
#include <navfn/navfn_ros.h>
#include </home/simoneforno/simon_ws/src/map_groundtruth/include/mapfetcher.h> 

int main(int argc, char** argv){

    std::vector<uint8_t> realMap;     //Real world map.

    ros::init(argc, argv, "compare");   

    /*Publishers for the real map on the /world and /align topics.*/
    ros::NodeHandle nodeH;  
    ros::Publisher worldPub = nodeH.advertise<nav_msgs::OccupancyGrid>("world", 1000);
    ros::Publisher alignPub = nodeH.advertise<nav_msgs::OccupancyGrid>("align", 1000);
    ros::Rate loop_rate(1);

    MapFetcher fetcher(argc, argv, argv[argc - 4]);     
    ROS_INFO("Map width: %d, height: %d, resolution: %g", fetcher.width, fetcher.height, fetcher.resolution);   

    /*Get the occupancy grid of the real map with the same 
    width, height and resolution as the gmapping map.*/
    realMap = fetcher.getGroundTruth();     

    //Convert the map to a standard ros occupancy grid.
    std::vector<int8_t> map;
    for(int i = 0; i < +realMap.size(); i++){
        if(+realMap[i] == 1){ //Occupied cell.
            map.push_back(100);
        }
        else if (+realMap[i] == 0){ //Free cell.
            map.push_back(0);
        }
        else{
            map.push_back(-1); //Unknown cell.
        }
    } 

   //Publish the occupancy grid.
    while (ros::ok()){

        nav_msgs::OccupancyGrid mapGrid;
        nav_msgs::MapMetaData metaData;

        metaData.resolution = fetcher.resolution;
        metaData.width = fetcher.width;
        metaData.height = fetcher.height;

        mapGrid.data = map;
        mapGrid.info = metaData;

        worldPub.publish(mapGrid);
        alignPub.publish(mapGrid);

        ros::spinOnce();
        loop_rate.sleep();      
    }

    return 0;
}
