#!/bin/bash

sudo raspi-config nonint do_serial 2

sudo sh -c "echo 'dtoverlay=miniuart-bt\ncore_freq=250' >> /boot/config.txt"

pip3 install rpi.gpio

cd
git clone https://github.com/ROBOTIS-GIT/DynamixelSDK
cd DynamixelSDK/python
sudo python3 setup.py install

#sudo reboot
