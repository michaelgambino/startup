# start xserver
startx

# which shell
echo $0

# connect to network
iwctl
station "device" connect "SSID"
# test connection
ping google.com

# update pacman
sudo pacman -Syu --noconfirm
# update keyring
sudo pacman -S archlinux-keyring

# update the system clock
timedatectl set-ntp true

fdisk /dev/sda

g 
n



