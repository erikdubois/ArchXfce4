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
########    P A C K E R         ########
########################################



# source : http://www.ostechnix.com/install-packer-arch-linux-2/

# straight from aur and github


# checking you have everything you need
# normally not needed
# sudo pacman -S base-devel fakeroot jshon expac git wget --noconfirm

#depends for packer

sudo pacman -S grep sed bash curl pacman jshon expac

rm -rf /tmp/packer

mkdir /tmp/packer

wget https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer

mv PKGBUILD\?h\=packer /tmp/packer/PKGBUILD

cd /tmp/packer

makepkg -i /tmp/packer



#sudo pacman -U /tmp/packer/packer-*.pkg.tar.xz

echo "########################################"
echo "########    T H E   E N D      #########"
echo "########################################"

