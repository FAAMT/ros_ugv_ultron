```diff
! NOTE: This repository is a work in progress as of July 2023. Will be doing my best to document this project for others with similar interests.
```
# Project Name: ROS UGV ULTRON
**Project Description:** This repository focuses on documenting a ROS-based UGV system that I developed. The system utilizes a Raspberry Pi (3B+) along with a camera, lidar, and motors to provide basic functionality. The Raspberry Pi runs Ubuntu 16.04 LTS with ROS Kinetic pre-installed via an image from [Ubiquity Robotics](https://learn.ubiquityrobotics.com/kinetic_pi_image_downloads). Follow their documentation to understand more about uploading the image to the Raspberry Pi. The workstation also runs Ubuntu 16.04 LTS with ROS Kinetic, which can be setup following this [documentation](https://learn.ubiquityrobotics.com/noetic_quick_start_workstation). 

To understand the purpose of this project, it is imperative to delve into the intended functionalities of the robot. The feature table serves as a guiding framework, precisely delineating the sub-goals of ULTRON. It is important to note that while I have developed certain components of the software, not all of it is my intellectual property. I am committed to diligently documenting all sources and attributing them appropriately. Here is a quick overview of the list of main electrical and mechanical components used to create ULTRON: </br>

| Feature | Description| Package(s) | Status |
| --------|------------|---------|--------|
| Teleoperation | Workstation has control over the robot remotely. | [exmachina](https://github.com/FAAMT/ros_ugv_ultron/tree/dev_branch_0/mypc_ws/src/exmachina) (dev) & [rosserial](https://github.com/ros-drivers/rosserial) (git)  | :white_check_mark: |
| Vision | Workstation has the ability to see visual feedback from the robot remotely.| [raspicam_node](https://github.com/UbiquityRobotics/raspicam_node) (git) (git) & [rqt_image_view](https://github.com/ros-visualization/rqt_image_view) (git) |  :white_check_mark: |
| LiDar | Workstation has the ability to detect a surface with a laser and measure the time for the reflected light to return to the receiver. | [ydlidar](https://www.ydlidar.com/service_support/download.html) (web) | :white_check_mark: |
| Map Making | Workstations can use the robot to build a map and localize at the same time. | [hector_slam](https://github.com/UbiquityRobotics/raspicam_node) (git)|  :white_check_mark: |
| Person Detection | Workstation can observe the robot detecting the "location of the person" as an object and marking the area in which the person is located. | [opencv](https://github.com/tizianofiorenzani/ros_tutorials/tree/master/opencv) (git) & [rqt_image_view](https://github.com/ros-visualization/rqt_image_view) (git) | :soon: |
| Path Planning | Workstation provides a destination, and the robot finds the shortest and most obstacle-free path from the start to goal state. | [N/A]() |  :soon: |

It is important to note that while I have developed certain components of the software, not all of it is my intellectual property. I am committed to diligently documenting all sources and attributing them appropriately. Here is a quick overview of the list of main electrical and mechanical components used to create ULTRON: </br>
| Electrical Components     | Price |Image           |
| ------------- |------|:-------------:|
| [64GB Micro SD Card]()| $5 | <img src="https://github.com/FAAMT/ros_ugv_ultron/assets/82693292/18a69191-a289-49ab-9780-1137ee707e0e" width=25%/>
| [Raspberry Pi 3 Model B+ x1](https://www.raspberrypi.com/products/raspberry-pi-3-model-b-plus/) |$35|<img src="https://github.com/FAAMT/ros_ugv_ultron/assets/82693292/54c797bd-4644-40fe-b0b6-983cc0bacbdb" width=25%>
| [Arduino Mega 2560 REV3  x1](https://www.amazon.com/gp/product/B0046AMGW0/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1) | $36 | <img src="https://github.com/FAAMT/ros_ugv_ultron/assets/82693292/290dfb20-7bd6-4ea9-9b5b-6bf97e16efaf" width=25%>
| [YDLIDAR X2L x1](https://www.amazon.com/gp/product/B07YC78WDK/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1) |$70 | <img src="https://github.com/FAAMT/ros_ugv_ultron/assets/82693292/096fa4ea-df55-4667-9f46-0b46fdb4e574" width=25%>
| [DC 12V 120RPM Gear Motor x4](https://www.amazon.com/gp/product/B071KFSVRN/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1) | $60 | <img src="https://github.com/FAAMT/ros_ugv_ultron/assets/82693292/0c3a713d-b02c-431e-b85e-0eb6090d3aa0" width=25%>
| [L298N Motor Driver x2](https://www.amazon.com/gp/product/B07WS89781/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1) | ~$20 | <img src="https://github.com/FAAMT/ros_ugv_ultron/assets/82693292/6d21cf40-6c90-4595-bdda-d5919f308940" width=25%>
|[1080P Webcam 5MP OV5647 x1](https://www.amazon.com/gp/product/B08QFM8TVV/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)| ~10 | <img src="https://github.com/FAAMT/ros_ugv_ultron/assets/82693292/7a1a6268-225c-4ecb-9c84-34ef224eeff5" width=25%>|
|[12V 2000mAh Battery x1](https://www.amazon.com/gp/product/B09LX94XM7/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&th=1)| ~$20 | <img src="https://github.com/FAAMT/ros_ugv_ultron/assets/82693292/8e5b8b3a-481c-46e8-9a53-23128829f246" width=25%>|
|[LM2596 Adjustable DC-DC Step Down Buck Power Convert Module 4.0-40V Input to 1.25-37V x1](https://www.amazon.com/gp/product/B00LSEBYHU/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)| $5 |<img src="https://github.com/FAAMT/ros_ugv_ultron/assets/82693292/6065bf5f-b8d9-4c08-96bb-88fa893609e6" width=25%>|
| **Mechanical Components**  | **Price** |  **Image** |
| [Mecanum Wheels x4]() | ~$20 | <img src="https://github.com/FAAMT/ros_ugv_ultron/assets/82693292/1544e2d9-484b-48b8-bd34-0712085d7da8" width=25%>
| **Total Cost:** | $281 |  Note: some prices are based on wholesale price |
<div align="center">
</br>ULTRON's chassis frame was designed using Autodesk Fusion 360; here is a rendered representation.
  </br><img src="https://github.com/FAAMT/ros_ugv_ultron/assets/82693292/c452e5b1-3dc1-4a57-9dc6-c04bfd5d3baf"  width=100%>
</div>

<div align="center">
  &nbsp;&nbsp;&nbsp; DEMO: ULTRON-001
  <br/>** Note: The video is sped up 300% for the sake of brevity. **
  <video src='https://github.com/FAAMT/ros_ugv_ultron/assets/82693292/f8ab93bb-312f-4d7d-95b2-b4253dbb8a0b'> 
  </video>
</div>
<br />
