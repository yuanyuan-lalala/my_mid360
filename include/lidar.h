# include"iostream"
#include "vector"
#include"ros/ros.h"
#include"sensor_msgs/PointCloud2.h"
#include"livox_ros_driver2/CustomPoint.h"
#include"livox_ros_driver2/CustomMsg.h"
#include"pcl/point_cloud.h"
#include "pcl/point_types.h"

#include"pcl_conversions/pcl_conversions.h"

#define PI (3.1415926)
#define SCAN_LINE (4)
#define LIDAR_FREQUENCY (10)


class lidarProcessing{

    public:
    lidarProcessing(); 
    void lidarCallbackCustom(const livox_ros_driver2::CustomMsgConstPtr& msg);
    void lidarCallbackPointCloud2(const sensor_msgs::PointCloud2ConstPtr& msg);
    ros::NodeHandle nh;
    ros::Publisher pubPointCloud2,pubScanLines[SCAN_LINE], pubLine0Time;
    ros::Subscriber subPointCloud2; 

    int g_printPoints = false;
   


};