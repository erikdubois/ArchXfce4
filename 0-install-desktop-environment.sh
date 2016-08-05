echo " Xserver setup"

sudo pacman -S xorg-server xorg-server-utils xorg-xinit xorg-twm xterm --noconfirm
sudo pacman -S x86-video-nouveau --noconfirm

echo "Display manager"

sudo pacman -S gdm
sudo systemctl enable gdm.service
sudo systemctl start gdm.service

echo "Desktop Environment"

sudo pacman -S xfce4 xfce4-goodies  --noconfirm
