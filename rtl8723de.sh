#!bin/bash
#
#
#
#sudo apt update && sudo apt install git dkms

git clone -b extended --single-branch https://github.com/lwfinger/rtlwifi_new.git

sudo dkms add rtlwifi_new
sudo ln -s /bin/kmod /bin/kmodsign
sudo dkms build rtlwifi-new/0.6 
sudo dkms install rtlwifi-new/0.6 --force
sudo sudo /bin/sh -c 'echo "options rtl8723de ant_sel=2" >> /etc/modprobe.d/rtl8723de.conf'
sudo cp ./rtlwifi_new/firmware/rtlwifi/rtl8723defw.bin /lib/firmware/rtlwifi/
#shutdown 0 -r
