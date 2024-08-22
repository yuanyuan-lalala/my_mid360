#include"lidar.h"

lidarProcessing::lidarProcessing() : nh("~") {  // 使用初始化列表来调用带参数的构造函数

        ROS_INFO("--> Start mid360 viewer.");
        int msg_type = 0;
        
        nh.getParam("msg_type", msg_type);
        nh.getParam("print_points",g_printPoints);
        ROS_WARN_STREAM("==> Msg type: " << msg_type <<", " << ((msg_type==0) ? "custom " : "ros pointcloud2"));

        if(msg_type == 0){
           
             subPointCloud2 = nh.subscribe<livox_ros_driver2::CustomMsg>(
            "/livox/lidar", 100, &lidarProcessing::lidarCallbackCustom, this);
        }else if(msg_type == 1){
            subPointCloud2 = nh.subscribe<sensor_msgs::PointCloud2>("livox/lidar",100,&lidarProcessing::lidarCallbackPointCloud2,this);
        }
        pubPointCloud2 = nh.advertise<sensor_msgs::PointCloud2>("/pointcloud_with_intensity", 10);
        for(int i = 0;i < SCAN_LINE;i++){
            pubScanLines[i] = nh.advertise<sensor_msgs::PointCloud2>("/lidar/line"+std::to_string(i), 10);
        }
        ros::Rate r(100);
        while(ros::ok()){
            ros::spinOnce();
            r.sleep();
        }


}
void lidarProcessing::lidarCallbackCustom(const livox_ros_driver2::CustomMsgConstPtr& msg){
    ROS_INFO_STREAM("custom msg size : "<< msg->point_num);
    
    //一共四条线
    std::vector<pcl::PointCloud<pcl::PointXYZINormal>::Ptr> v_pc;
    for(int i=0; i<SCAN_LINE; ++i){
        v_pc.push_back(pcl::PointCloud<pcl::PointXYZINormal>::Ptr(new pcl::PointCloud<pcl::PointXYZINormal>()));
    }
    
    for(auto point : msg->points){
        pcl::PointXYZINormal p_new;
        if(std::abs(point.x)<0.01&&std::abs(point.y)<0.01){
            continue;
        }
        p_new.x = point.x;
        p_new.y = point.y;
        p_new.z = point.z;
        p_new.intensity = point.reflectivity * 1e-9 * LIDAR_FREQUENCY;
        double distance_horizon = std::sqrt(point.x* point.x + point.y*point.y);
        double angle = std::atan2(point.z,distance_horizon);
        p_new.normal_x = point.line;
        p_new.normal_z = angle*180/PI;
        v_pc[point.line]->points.push_back(p_new);
    }
    for(int i = 0;i < SCAN_LINE;i++){
        sensor_msgs::PointCloud2 pcMsg;
        pcl::toROSMsg(*v_pc[i], pcMsg);
        pcMsg.header  = msg->header;
        pcMsg.header.frame_id = "map";
        pubScanLines[i].publish(pcMsg);//每次只发布一条线
    }
    if(g_printPoints){
        for(int i=0; i<msg->point_num; ++i){
            auto p = msg->points[i];
            if(abs(p.x)<0.01 || abs(p.y) < 0.01)         // skip too-near points.
                continue;
            double distance = sqrt(p.x*p.x+p.y*p.y);
            double angle = atan2(p.z, distance)*180/PI;
            // if(p.line==0)                               // print only one line.
                ROS_INFO_STREAM("i=" << i << ", offset: " << p.offset_time << ", line: " << (int)(p.line) << ", angle: " << angle);
        }
    }
    std::vector<std::pair<double,std::pair<int,int>>> angles;
    for(int i = 0;i < msg->point_num;i++){
        auto point = msg->points[i];
        if(std::abs(point.x) < 0.01 && std::abs(point.y) < 0.01){
            continue;
        }
        double distance = std::sqrt(point.x * point.x + point.y * point.y);
        double angle = std::atan2(point.z,distance) * 180 / PI;
        auto index_line = std::pair<int,int>(i,point.line);
        angles.push_back(std::pair<double,std::pair<int,int>>(angle,index_line));

    }
    std::sort(angles.begin(),angles.end(),[](std::pair<double,std::pair<int,int>>& a,std::pair<double,std::pair<int,int>>& b){return a.first < b.first;});
    ROS_ERROR_STREAM("========================");
    for(auto p : angles){
        // if(p.second.second == 0)        // print only one line
            ROS_INFO_STREAM("Angle: " << p.first <<", index: " << p.second.first <<", line: " << p.second.second);
    }


}
void lidarProcessing::lidarCallbackPointCloud2(const sensor_msgs::PointCloud2ConstPtr& msg){
    pcl::PointCloud<pcl::PointXYZINormal>::Ptr pc (new pcl::PointCloud<pcl::PointXYZINormal>());
//  pcl::PointCloud<pcl::PointXYZI>::Ptr pc(new pcl::PointCloud<pcl::PointXYZI>());
    pcl::fromROSMsg(*msg, *pc);
    ROS_INFO_STREAM("Ros PointCloud2 callback. Size:"<<pc->points.size());
    for(auto point : pc->points){
        if(point.x < 0.01 && point.y < 0.01){
            continue;
        }
        double distance = std::sqrt(point.x * point.x + point.y * point.y);
        double angle = std::atan2(point.z, distance);
        point.intensity = (angle+PI)/(2*PI);//角度越大强度越高
        sensor_msgs::PointCloud2 pcMsg;
    
    }
    sensor_msgs::PointCloud2 pcMsg;
    pcl::toROSMsg(*pc, pcMsg);
    pcMsg.header = msg->header;
    pcMsg.header.frame_id = "map";
    pubPointCloud2.publish(pcMsg);

}