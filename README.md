# InstallScrips
1.setup imx519 driver  
```
wget -O install_pivariety_pkgs.sh https://github.com/ArduCAM/Arducam-Pivariety-V4L2-Driver/releases/download/install_script/install_pivariety_pkgs.sh
chmod +x install_pivariety_pkgs.sh  
./install_pivariety_pkgs.sh -p imx519_kernel_driver
```
  
2.setup picamera2  
```
wget https://raw.githubusercontent.com/kyo2001/InstallScrips/main/picamera2_install.sh  
chmod +x picamera2_install.sh  
./picamera2_install.sh  
```
  
3.setup serial servo gpio  
```
wget https://raw.githubusercontent.com/kyo2001/InstallScrips/main/servo_io_setup.sh  
chmod +x servo_io_setup.sh  
./servo_io_setup.sh  
```
  
4.setup samba  
```
wget -O https://raw.githubusercontent.com/kyo2001/InstallScrips/main/samba_setup.sh  
chmod +x samba_setup.sh  
./samba_setup.sh  
```
