# ArchXfce4

Installing notes for my personal use.


Sardi v 7.2.9 at [Sourceforge](https://sourceforge.net/projects/sardi/files/)

![Screenshots](http://i.imgur.com/CtFKkQC.jpg)

![Screenshots](http://i.imgur.com/GCRovAU.jpg)

![Screenshots](http://i.imgur.com/6sbaNWO.png)


# FASE 1

Steps to take when installing XFCE4 from scratch

Pop in the latest arch usb

loadkeys be-latin1

cfdisk /dev/sda

delete all partitions

sda1 	/ everything minus 8GB for swap making sure it is primary and bootable (asterisk!)

sda2 		/swap	8 GB primary type swap (82)	

write - yes -quit

mkfs.ext4 /dev/sda1

mkswap /dev/sda2

swapon /dev/sda2

mount /dev/sda1 /mnt

pacman -Sy


pacstrap -i /mnt base base-devel

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt /bin/bash

nano /etc/locale.gen

uncomment these lines

	be_BY.UTF8
	en_GB.UTF8
	en_US.UTF8

CTRL + X , yes, enter

locale-gen

echo LANG=en_US.UTF-8 > /etc/locale.conf


	OMIT  : export LANG=en_US.UTF-8


nano /etc/vconsole.conf

	KEYMAP=be-latin1
	FONT=lat9w-16

CTRL + X , yes, enter

ln -s /usr/share/zoneinfo/Europe/Brussels /etc/localtime

hwclock --systohc --utc

echo ArchErik > /etc/hostname

nano /etc/hosts


	<ip-address> <hostname.domain.org> <hostname>
	127.0.0.1 localhost.localdomain localhost ArchErik
	::1   localhost.localdomain localhost ArchErik


pacman -S networkmanager

systemctl enable NetworkManager



	OMIT : systemctl start NetworkManager

	OMIT : mkinitcpio -p linux


passwd

pacman -S grub os-prober

	CHANGED : grub-install --target=i386-pc --recheck /dev/sda

grub-install --target=i386-pc /dev/sda


grub-mkconfig -o /boot/grub/grub.cfg


exit

	CHANGED : umount /dev/sda1

umount -R /mnt

reboot







#FASE 2 root

login with root
and use the password

useradd -m -g users -G wheel,storage,power -s /bin/bash erik

passwd erik

EDITOR=nano visudo

Look for these lines with an hashtag in front
	
	 %wheel ALL=(ALL) ALL

hashtag (#) should be gone

CTRL = X , yes and enter


pacman -S bash-completion

	if no internet - again

	sudo systemctl enable NetworkManager

	sudo systemctl start NetworkManager


exit







# FASE 3 Personal login and xserver


Login with new account i.e. here erik and password



sudo pacman -S xorg-server xorg-server-utils xorg-xinit xorg-twm xterm


sudo pacman -S xf86-video-nouveau





# FASE 4 Desktop environment


sudo pacman -S xfce4 xfce4-goodies xfce4-whiskermenu-plugin


# FASE 5 Display manager

easy switching between desktop environments and login

sudo pacman -S gdm

systemctl enable gdm.service

systemctl start gdm.service


change your keyboard to belgian in the settings



# Fase 5 Getting our software

export EDITOR=nano


sudo pacman -S firefox

Surf to https://github.com/erikdubois/ArchXfce4

If you download the zip

	
sudo pacman -S file-roller

Download and right mouse click to extract

If you work with git

sudo pacman -S git

git clone https://github.com/erikdubois/ArchXfce4


Go inside the folder and run every program in there

./1 and press tab etcetera


./2 ...


./3 ...

run forest run


printscreen

scrot -e ~/Pictures/capt-$(date '+%Y-%m-%d-%H%M%S').png

Spotify controls set up via keyboard shortcut

playerctl

Available Commands:
  play                    Command the player to play

  pause                   Command the player to pause

  play-pause              Command the player to toggle between play/pause

  stop                    Command the player to stop

  next                    Command the player to skip to the next track

  previous                Command the player to skip to the previous track

  position [OFFSET][+/-]  Command the player to go to the position or seek forward/backward OFFSET in seconds

  volume [LEVEL][+/-]     Print or set the volume to LEVEL from 0.0 to 1.0

  status                  Get the play status of the player

  metadata [KEY]          Print metadata information for the current track. Print only value of KEY if passed
  
