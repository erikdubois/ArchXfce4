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
########    A P P S    A U R    ########
########################################




######## A C C E S S O R I E S #########

# PDF reader
# activate multilib in the /etc/pacman.conf
# packer foxitreader --noedit
# packer acroread --noedit
# using evince


# calculator
# sudo pacman -S gnome-calculator

echo "################################################################"
echo "galculator-gtk2"
echo "################################################################"

# packer galculator-gtk2 --noedit


######## D E V E L O P M E N T #########

echo "################################################################"
echo "sublime-text-dev"
echo "################################################################"

#packer sublime-edit --noedit

packer sublime-text-dev --noedit

######## E D U C A T I O N     #########

######## G A M E S             #########

######## G R A P H I C S       #########

echo "################################################################"
echo "archlinux logo's"
echo "################################################################"

# packer archlinux-artwork --noedit

######## I N T E R N E T       #########

echo "################################################################"
echo "google chrome"
echo "################################################################"

# packer google chrome --noedit

echo "################################################################"
echo "lastpass"
echo "################################################################"

# packer lastpass --noedit

 ######## M U L T I M E D I A   #########

echo "################################################################"
echo "spotify"
echo "################################################################"

packer spotify  --noedit

echo "################################################################"
echo "kazam"
echo "################################################################"

packer kazam --noedit

######## O F F I C E           #########

echo "################################################################"
echo "focuswriter"
echo "################################################################"

# packer focuswriter --noedit


echo "################################################################"
echo "masterpdfeditor"
echo "################################################################"

# packer masterpdfeditor --noedit




######## S E T T I N G S       #########

        # I C O N S #

#packer ultra-flat-icons --noedit
#packer evopop-icon-theme-git  --noedit
#git clone https://github.com/KotusWorks/Ardis-icon-theme.git ~/.themes/Ardis-icon-theme
#git clone https://github.com/horst3180/Vertex-Icons ~/.icons/Vertex-Icons


packer numix-circle-icon-theme  --noedit


        # T H E M E S #

#packer evopop-gtk-theme  --noedit
#packer zukitwo-themes  --noedit
#packer omg-suite --noedit
#packer vertex-themes-git --noedit
#packer numix-themes-archblue --noedit
#packer ceti-3.14-theme --noedit
#packer zoncolor-themes-pack --no-edit

# gtk theme
# http://gnome-look.org/content/show.php/Just-Dark?content=168025

echo "################################################################"
echo "################################################################"
echo "I will use the following github to get A L L the themes and icons"
echo "https://github.com/erikdubois/themes-icons-pack"
echo "################################################################"
echo "################################################################"

        # C U R S O R S #

#manjaro cursor theme

echo "################################################################"
echo "xcursor-menda-git"
echo "################################################################"

packer xcursor-menda-git --noedit

#packer xcursor-simpleandsoft --noedit


######## S Y S T E M           #########

        
        # C L O U D #

echo "################################################################"
echo "dropbox"
echo "################################################################"

# packer dropbox --noedit


        # S Y S T E M  T O O L S # 

# steering spotify from the keyboard G15 Logitech - volume and next/previous/stop/pause

echo "################################################################"
echo "playerctl"
echo "################################################################"

packer playerctl --noedit

# screenart for hardware and software

echo "################################################################"
echo "alsi"
echo "################################################################"

# packer alsi --noedit

echo "################################################################"
echo "screenfo"
echo "################################################################"

# packer screenfo --noedit


        # T H U N A R #


        # F O N T S #

echo "################################################################"
echo "ttf-ms-fonts"
echo "################################################################"


packer ttf-google-fonts-git --noedit
#packer ttf-ms-fonts --noedit
#packer hermit --noedit
#packer terminess-powerline-font --noedit

echo "################################################################"
echo "font-manager"
echo "################################################################"

#packer font-manager  --noedit


        # U T I L I T I E S #

# activate multilib in the pacman.conf
# packer teamviewer  --noedit
# packer usb-creator --noedit
# packer imagewriter --noedit
# packer isousb --noedit
# if using pamac you need some kind of policy kit to grant permission for updating
# sudo pacman -S polkit
# packer xfce-polkit-git --noedit
# want to add a nice wallpaper to your grub or just change the time or...
# https://launchpad.net/grub-customizer
# packer grub-customizer



        # N E T W O R K 


#packer  slurm --noedit




       
        # S C A N N E R #

# http://www.linuxveda.com/2013/04/02/how-to-install-and-configure-hp-printer-in-arch-linux/

echo "################################################################"
echo "sane"
echo "################################################################"

#packer sane --noedit
#packer simple-scan 

# edit following file dll.conf and uncomment line with #hpaio
# This is my current network printer hp aio photosmart 7520

# sudo nano /etc/sane.d/dll.conf



###############################################################
#
#        EXTRA      EXTRA      EXTRA      EXTRA     EXTRA      
#
###############################################################



        # A U T O  L O G I N #

# if you want to autologin - aka at home no danger
# https://github.com/Arakis/autologin-on-boot
# packer autologin-on boot --noedit
# /bin/autologin-on-boot
# sudo systemctl enable autologin-on-boot
# sudo systemctl start autologin-on-boot


        # S P E E D T E S T #

# terminal speedtest
# wget -O speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest_cli.py
# chmod +x speedtest-cli
# ./speedtest-cli --share
# https://github.com/sivel/speedtest-cli



        # B U R N   I S O  T O   U S B #

# sudo fdisk -l
# sudo dd bs=4M if=/path/to/xxxxx.iso of=/dev/sdc && sync




echo "########################################"
echo "########    T H E   E N D      #########"
echo "########################################"
