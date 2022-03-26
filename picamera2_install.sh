#!/bin/bash

START_TIME=`date +%s`
sudo apt update
sudo apt install -y python3-pip
sudo apt install -y libboost-dev
sudo apt install -y libgnutls28-dev openssl libtiff5-dev
sudo apt install -y qtbase5-dev libqt5core5a libqt5gui5 libqt5widgets5
sudo apt install -y libglib2.0-dev libgstreamer-plugins-base1.0-dev
sudo apt install -y meson
sudo apt install -y python3-pyqt5
sudo apt install -y libopenjp2-7-dev libopenexr25 libavcodec-extra58 libavformat58 libswscale5
sudo apt install -y libatlas-base-dev
sudo apt install -y libfmt-dev libdrm-dev
sudo pip3 install opencv-python==4.4.0.46
sudo pip3 install jinja2
sudo pip3 install pyyaml ply
sudo pip3 install pyopengl
sudo pip3 install pillow
sudo pip3 install v4l2-fix
sudo pip3 install numpy

cd
git clone --branch picamera2 https://github.com/raspberrypi/libcamera.git
cd libcamera
meson build --buildtype=release -Dpipelines=raspberrypi -Dipas=raspberrypi -Dv4l2=true -Dgstreamer=enabled -Dtest=false -Dlc-compliance=disabled -Dcam=disabled -Dqcam=disabled -Ddocumentation=disabled -Dpycamera=enabled
ninja -C build -j 2
sudo ninja -C build install
cd
git clone https://github.com/tomba/kmsxx.git
cd kmsxx
git submodule update --init
meson build
ninja -C build -j 2
cd
git clone https://github.com/RaspberryPiFoundation/python-v4l2.git
cd
git clone https://github.com/raspberrypi/picamera2.git
sh -c "echo \"export PYTHONPATH=/home/pi/picamera2:/home/pi/libcamera/build/src/py:/home/pi/kmsxx/build/py:/home/pi/python-v4l2\" >> ~/.bashrc"

END_TIME=`date +%s`

SS=`expr ${END_TIME} - ${START_TIME}`
HH=`expr ${SS} / 3600`
SS=`expr ${SS} % 3600`
MM=`expr ${SS} / 60`
SS=`expr ${SS} % 60`

echo "Total Time: ${HH}:${MM}:${SS} (h:m:s)"
