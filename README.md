# Project Name: ULTRON UGV
**Project Description:** This repository focuses on documenting a ROS-based UGV system that I developed. The system utilizes a Raspberry Pi (3B+) along with a camera, lidar, and motors to provide basic functionality. The Raspberry Pi runs Ubuntu 16.04 LTS with ROS Kinetic pre-installed via an image from [Ubiquity Robotics](https://learn.ubiquityrobotics.com/kinetic_pi_image_downloads). Follow their documentation to understand more about uploading the image to the Raspberry Pi. 

It is important to note that while I have developed certain components of the software, not all of it is my intellectual property. I am committed to diligently documenting all sources and attributing them appropriately. For a quick overview on the list of electrical components used to create ULTRON. 
```diff
! NOTE: This repository is a work in progress as of July 2023. Will be doing my best to document this project for others with similar interests.
```
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
