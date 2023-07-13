```diff
! NOTE: This repository is a work in progress as of July 2023. Will be doing my best to document this project for others with similar interests.
```
# Project Name: ULTRON UGV
**Project Description:** This repository focuses on documenting a ROS-based UGV system that I developed. The system utilizes a Raspberry Pi (3B+) along with a camera, lidar, and motors to provide basic functionality. The Raspberry Pi runs Ubuntu 16.04 LTS with ROS Kinetic pre-installed via an image from [Ubiquity Robotics](https://learn.ubiquityrobotics.com/kinetic_pi_image_downloads). Follow their documentation to understand more about uploading the image to the Raspberry Pi. The workstation also runs Ubuntu 16.04 LTS with ROS Kinetic, which can be setup following this [documentation](https://learn.ubiquityrobotics.com/noetic_quick_start_workstation). 

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
| **Mechanical Components**  | **Price** |  **Image** |
| [Mecanum Wheels x4]() | ~$20 | <img src="https://github.com/FAAMT/ros_ugv_ultron/assets/82693292/1544e2d9-484b-48b8-bd34-0712085d7da8" width=25%>
| **Total Cost:** | $256 |  Note: some prices are based on wholesale price |



<br/>
For now, here is "ULTRON" fully assembled: <br />
<p align="center">
<img src="https://user-images.githubusercontent.com/82693292/152650523-951588f2-b355-4d95-97e6-f46a93989f0d.JPG" width=50% height=50%> 
<img src="https://user-images.githubusercontent.com/82693292/152650528-b944068a-f1f8-441b-9edc-d8c1374e347c.JPG" width=50% height=50%> 
</p>
<br />

Here is the Fusion360 version of him: <br />
<p align="center">
<img src="https://user-images.githubusercontent.com/82693292/152650484-7af85e27-28d4-4897-bc61-e807d644a575.png" width=50% height=50%>
</p>
<br />

<p align="center">
Note: I made a last minute decision to orient his camera the other way around which is why the images may not be consistent with each other. I found that the lidar occupied too much space in the camera frame. I will upload his code as soon as I gather all the necessary reference to the other repos I have used in the making of this project.

Here are some videos of ULTRON moving around the apartment. It is receiving commands from my PC which is connected to the onboard wifi of the Raspberry Pi. The camera is also publishing a stream of images onto the topic raspicam_node which we can access from the computer. I will add more details on how I got this work soon!
</p>
<br />

  <div align="center">
  
&nbsp;&nbsp;&nbsp;ULTRON moving around!|  My flatmate publishing velocity.
:---:  | ---: 
<video src='https://user-images.githubusercontent.com/82693292/152689234-091d02ac-c333-45e7-95d0-b993f5c16aa7.MOV'> | <video src='https://user-images.githubusercontent.com/82693292/152689675-f86b351e-9fe6-4e42-af11-9a726b337ebc.mp4'>

</div>
  <br />
