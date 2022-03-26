#!/bin/bash

sudo apt install -y samba
sudo sh -c "echo '[pi]\npath = /home/pi\nread only = No\nguest ok = Yes\nforce user = pi' >> /etc/samba/smb.conf"