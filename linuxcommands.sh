# list block devices
lsblk #or
fdisk -l
# delete drive
rm -rf
# switch user
su
# see the sftab file
vim /etc/fstab

# list mounted partitions
lsblk -f
# check battery percentage
cat /sys/class/power_supply/BAT0/capacity
# check mountpoints
df -hP



# set up encryption
cryptsetup luksFormat /dev/sda3 # enter passphrase, ignore warning
# unlock encrypted drive
cryptsetup open --type luks /dev/sda3 "name"

# check if UEFI or BIOS
ls /sys/firmware/efi/efivars #if there are files in that directory then it's UEFI
# update pacman
sudo pacman -Syu --noconfirm
# get bigger font
pacman -Sy terminus-font
# set font
setfont ter-28n
# update keyring
sudo pacman -S archlinux-keyring

# connect to the internet
iwctl
station "device" connect "SSID"
# update the system clock
timedatectl set-ntp true
# partition the disks (UEFI)
fdisk -l # lists disks
fdisk /dev/nvme0n1
p # print all partitions
d # delete partitions
g # create new GPT partition table
n # create new partition (EFI)
# partition number: enter
# first sector: enter
# last sector:
+500M # enter
t # set partition type
1 # EFI
# next partition:
n # create new partition 
# partition number: enter
# first sector: enter
# last sector: enter
t # set partition type
# partition number: enter
30 # partition type (LVM)
w # write changes

# format with file system
mkfs.fat -F32 /dev/nvme0n1p1
# set up LVM
pvcreate --dataalignment 1m /dev/nvme0n1p2
# create volume group (container for partitions)
vgcreate volgroup0 /dev/nvme0n1p2
# create logical volumes (to use as if they were partitions)
lvcreate -L 30GB volgroup0 -n lv_root
#
lvcreate -l 100%FREE volgroup0 -n lv_home
# activate LVM configuration we just created
modprobe dm_mod # load kernel module into kernel
vgscan# scan for volume groups available on our system
vgchange -ay # activate available vol group
# format root file system
mkfs.ext4 /dev/volgroup0/lv_root
# mount root volume
mount /dev/volgroup0/lv_root /mnt
# format logical volume the we will assign to the home folder
mkfs.ext4 /dev/volgroup0/lv_home
# make new directory to mount home volume to
mkdir /mnt/home
# mount the logical volume to the home directory
mount /dev/volgroup0/lv_home /mnt/home
# make directory for fstab file
mkdir /mnt/etc
# make fstab file (will tell distribution where to find partitions)
genfstab -U -p /mnt >> /mnt/etc/fstab
# check that everything looks ok
cat /mnt/etc/fstab
# update keyring
pacman -S archlinux-keyring
# install arch
pacstrap -i /mnt base base-devel nano vim --noconfirm
# make it bootable (the command promt shown is now the system, not the live environment)
arch-chroot /mnt
# install kernel
pacman -S linux linux-headers linux-lts linux-lts-headers

pacman -S networkmanager wpa_supplicant wireless_tools netctl dialog lvm2 sudo

systemctl enable NetworkManager

vim /etc/mkinitcpio.conf # edit line that says HOOKS, add lvm2 between block and filesystems

mkinitcpio -p linux

mkinitcpio -p linux-lts

# set a password
passwd
# add user
useradd -m -g users -G wheel mike
passwd mike
# set locale
vim /etc/locale.gen # comment out lines of locale you want. US-EN
locale-gen
# set your language
vim /etc/locale.conf # LANG=en-US.UTF-8
EDITOR=nano visudo # uncomment %wheel ALL=(ALL) ALL
pacman -S grub efibootmgr dosfstools os-prober mtools
mkdir /boot/EFI
mount /dev/sda1 /boot/EFI
grub-install --target=x86_64-efi --bootloader-id=grub_uefi --recheck /dev/sda

ls -l /boot/grub # check if locale directory exists, if not make it:
mkdir /boot/grub/locale
cp /usr/share/locale/en\@quot/LC_MESSAGES/grub.mo /boot/grub/locale/en.mo
# make configuration file
grub-mkconfig -o /boot/grub/grub.cfg
# exit the system and back into live environment
exit
# unmount drives
umount -a
# reboot
shutdown now




# location where timezone info is
ls /usr/share/zoneinfo
#location where local time info is
ls /etc/localtime
# link local time to time zone
ln -sf /usr/share/zoneinfo/Canada/Toronto /etc/localtime
# set host name
vim /etc/hostname # save hostname in file
# exit the system and back into live environment
exit
# unmount drives
umount -R /mnt
# reboot
shutdown now




# format with file system
mfks.ext4 /dev/sda1
# set the swap partition
mkswap /dev/sda2
swapon /dev/sda2
# mount the root
mount /dev/sda3 /mnt
# make folders to mount the other drives
mkdir /mnt/home
mkdir /mnt/boot
# install arch
pacstrap /mnt base base-devel vim
# make fstab file
genfstab -U /mnt >> /mnt/etc/fstab
# make it bootable
arch-chroot /mnt
# now you're in the system, no longer in the live environment
# install a network manager
pacman -S networkmanager
# emable networkmanager on startup
systemctl enable NetworkManager
# install bootloader
pacman -S grub
# generate grub configuration
grub-install --target=i386-pc /dev/sda
grub-install --target=x86_64-efi /dev/sda
# make configuration file
grub-mkconfig -o /boot/grub/grub.cfg
# set a password
passwd
# set locale
vim /etc/locale.gen # comment out lines of locale you want. US-EN
locale-gen
# set your language
vim /etc/locale.conf # LANG=en-US.UTF-8
# location where timezone info is
ls /usr/share/zoneinfo
#location where local time info is
ls /etc/localtime
# link local time to time zone
ln -sf /usr/share/zoneinfo/Canada/Toronto /etc/localtime
# set host name
vim /etc/hostname # save hostname in file
# exit the system and back into live environment
exit
# unmount drives
umount -R /mnt
# reboot
shutdown now
