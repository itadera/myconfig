SCRIPT_DIR=$(cd $(dirname $0); pwd)
MODE_FILE=".ros2_mode"

if [ -f $SCRIPT_DIR/$MODE_FILE ]; then
  MODE="ROS2"
else
  MODE="ROS1"
fi

echo "Current ROS mode is $MODE"

if [$MODE="ROS1"]; then
  # for ROS1
  source /opt/ros/noetic/setup.zsh
elif [$MODE="ROS2"]; then
  # for ROS2
  source /opt/ros/foxy/setup.zsh
  #export  ROS_DOMAIN_ID=
fi
