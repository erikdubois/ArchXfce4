# ArchXfce4

psss.... Just for me.

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

locale-gen

	echo LANG=en_US.UTF-8 > /etc/locale.conf
	export LANG=en_US.UTF-8

nano /etc/vconsole.conf
	KEYMAP=be-latin1
	FONT=lat9w-16

ln -s /usr/share/zoneinfo/Europe/Brussels /etc/localtime

hwclock --systohc --utc

echo ArchErik > /etc/hostname

nano /etc/hosts
	#<ip-address> <hostname.domain.org> <hostname>
	127.0.0.1 localhost.localdomain localhost ArchErik
	::1   localhost.localdomain localhost ArchErik
	touch /etc/udev/rules.d/80-net-setup-link.rules

pacman -S networkmanager

systemctl enable NetworkManager

mkinitcpio -p linux

passwd

pacman -S grub os-prober

grub-install --target=i386-pc --recheck /dev/sda

grub-mkconfig -o /boot/grub/grub.cfg

umount /dev/sda2

umount /dev/sda1

reboot







#FASE 2 root

useradd -m -g users -G wheel,storage,power -s /bin/bash erik

passwd erik

EDITOR=nano visudo
	# %wheel ALL=(ALL) ALL

pacman -S bash-completion

exit







# FASE 3 erik

export EDITOR=nano

sudo nano /etc/pacman.conf

[multilib]
Include = /etc/pacman.d/mirrorlist
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch
sudo pacman -Syu
sudo pacman -S yaourt
yaourt packer      
sudo nano /etc/pacman.conf

#[archlinuxfr]
#SigLevel = Never
#Server = http://repo.archlinux.fr/$arch


via script


sudo pacman -S xorg-server xorg-server-utils xorg-xinit xorg-twm xterm
startx
