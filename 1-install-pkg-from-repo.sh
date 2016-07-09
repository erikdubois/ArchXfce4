#!/bin/bash
#======================================================================================
#
#                  -`
#                  .o+`                 
#                 `ooo/                  
#                `+oooo:                 M  a  d  e    on 
#               `+oooooo:               
#               -+oooooo+:              
#             `/:-:++oooo+:             
#            `/++++/+++++++:                      A  R  C  H
#           `/++++++++++++++:           
#          `/+++ooooooooooooo/`         
#         ./ooosssso++osssssso+`        
#        .oossssso-````/ossssss+`       
#       -osssssso.      :ssssssso.          F  o   r   
#      :osssssss/        osssso+++.     
#     /ossssssss/        +ssssooo/-     
#   `/ossssso+/:-        -:/+osssso+-                           A   R   C   H
#  `+sso+:-`                 `.-/+oso: 
# `++:.                           `-/+/
# .`                                 `/
#
#======================================================================================
#
#======================================================================================
#                               Archlinux and XFCE4
# 
# Author  : Erik Dubois at http://www.erikdubois.be
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================
#


########################################
########    A P P S  R E P O    ########
########################################



######## A C C E S S O R I E S #########

sudo pacman -S terminator --noconfirm

sudo pacman -S unclutter --noconfirm

sudo pacman -S ristretto --noconfirm

sudo pacman -S notify-osd --noconfirm

sudo pacman -S xfce4-screenshooter --noconfirm

sudo pacman -S xfce4-appfinder --noconfirm

suod pacman -S xfce4-power-manager --noconfirm

sudo pacman -S evince --noconfirm

# if you need to edit which extension goes with which program
# sudo pacman -S mime-editor



######## D E V E L O P M E N T #########

######## E D U C A T I O N     #########

######## G A M E S             #########

######## G R A P H I C S       #########

sudo pacman -S gimp --noconfirm
sudo pacman -S inkscape --noconfirm

######## I N T E R N E T       #########

sudo pacman -S firefox --noconfirm
sudo pacman -S flashplugin --noconfirm
sudo pacman -S transmission  --noconfirm
sudo pacman -S filezilla --noconfirm

# activate multilib in the pacman.conf
# sudo pacman -S skype

######## M U L T I M E D I A   #########

sudo pacman -S vlc --noconfirm

#sudo pacman -S clementine --noconfirm

sudo pacman -S shotwell --noconfirm


######## O F F I C E           #########

sudo pacman -S geary --noconfirm


######## S E T T I N G S       #########

       # T H E M I N G #

# Theme, icons, borders, cursors

sudo pacman -S oxygen-cursors --noconfirm


######## S Y S T E M           #########

        # S Y S T E M  T O O L S # 

# all kind of tools to get system information

sudo pacman -S scrot
 screenfetch
 git --noconfirm
 htop --noconfirm
wget  --noconfirm
lm_sensors  --noconfirm
sysstat  --noconfirm
glances  --noconfirm
sudo pacman -S numlockx --noconfirm
 inxi  --noconfirm
dmidecode  --noconfirm
hddtemp  --noconfirm
mesa-demos  --noconfirm
net-tools  --noconfirm
archey3  --noconfirm
mlocate  --noconfirm
hardinfo --noconfirm
numlockx on 

# monitor the GB/TB of your harddisk

sudo pacman -S baobab  --noconfirm

# Monitor the partitions and format them
# sudo pacman -S gparted --noconfirm

# download statistics

sudo pacman -S vnstat  --noconfirm
systemctl enable vnstat
systemctl start vnstat

# taskmanager if htop and glances is not for you

sudo pacman -S xfce4-taskmanager --noconfirm


        # S O U N D #

sudo pacman -S alsa-utils alsa-plugins alsa-lib alsa-firmware pulseaudio pulseaudio-alsa pavucontrol  --noconfirm
sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly  gstreamer0.10-ffmpeg  --noconfirm

# for kazam

#sudo pacman -S libsrtp --noconfirm
#sudo pacman -S volumeicon --noconfirm


        # T H U N A R #

sudo pacman -S thunar file-roller tumbler thunar-archive-plugin thunar-volman

# if you want  a wastbasket in thunar you better install this
# or thunar-vfs
sudo pacman -S gvfs   --noconfirm

# installed via brasero
# sudo pacman -S gvfs --noconfirm

# better search with catfish and dependancies - in depth string search
sudo pacman -S catfish findutils mlocate tracker strigi pinot --noconfirm


        # F O N T S #
#sudo pacman -S ttf-ubuntu-font-family --noconfirm
#sudo pacman -S ttf-droid --noconfirm --noconfirm
#sudo pacman -S ttf-inconsolata --noconfirm
sudo pacman -S ttf-google-fonts  --noconfirm

        # U T I L I T I E S #

sudo pacman -S gnome-disk-utility  --noconfirm

        # P R I N T E R #

sudo pacman -S cups cups-pdf ghostscript gsfonts libcups hplip system-config-printer
systemctl enable org.cups.cupsd.service
systemctl start org.cups.cupsd.service


        # N E T W O R K #

# if you want a networkmanager and applet mostly for laptop/wireless as
# lan just works and gives no added value

sudo pacman -S networkmanager --noconfirm

# set nm-applet to run at boot in the config file



echo "########################################"
echo "########    T H E   E N D      #########"
echo "########################################"

