# start xserver
startx

# which shell
echo $0

# connect to network
iwctl
station "device" connect "SSID"

# update pacman
sudo pacman -Syu --noconfirm
# update keyring
sudo pacman -S archlinux-keyring
