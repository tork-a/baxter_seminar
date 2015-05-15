^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package baxter_seminar_helper
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

0.1.0 (2015-05-15)
------------------
* (Fix) Kinect not found issue on Indigo.
* (Improve) Simpler implementation of seminar.sh (depends fully on jsk_tools 1.0.66 for rosset* commands).
* (Improve) Call ntpdate brute force for better time sync.
* Contributors: Isaac IY Saito

0.0.2 (2015-01-29)
------------------
* Call ntpdate brute force. Make seminar.sh executable.
* Contributors: Isaac IY Saito

0.0.1 (2014-12-09)
------------------
* (Made by @y-yosuke) adjust AR hand Z-position and Kinect checker board position.
* add arg sim to use moveit without running gazebo
* add joint_trajectory_controller from https://github.com/ros-planning/moveit_robots/pull/24
* add octmap setup
* use camera namespace
* add kinect with checkerboard calib system
* copy objectdetection_tf_publisher.py from checkerboard_detector, until next release
* fixed moveit_demo.launch to confirm the contents, except kinect.launch
* add marker_model
* fixed moveit_demo.launch to confirm the contents, except kinect.launch
* define new versoin of rossetmaster
* move seminr.sh under baxter_seminar_helper to find from rospack
* initial commit
* Contributors: Isaac IY Saito, Kei Okada
