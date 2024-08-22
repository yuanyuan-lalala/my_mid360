#include "ros/ros.h"
#include "vector"
#include"iostream"
#include"lidar.h"




int main(int argc,char** argv){

    ros::init(argc, argv, "view mid-360");
    
    lidarProcessing lidar_1;

    ROS_INFO("\033[1;32m----> my view mid-360 Started.\033[0m");
   
    ros::spin();

    return 0;
    
} 