# list partitions
parted -l
# zero fill drive, time displays time taken after
time dd if=/dev/zero of="drive" bs=1024 status=progress

# random fill drive
dd if=/dev/urandom of=/dev/sda


# BOOTABLE USB

# get name of drive
lsblk -l
# unmount drive
umount /dev/sdb*
# format drive
mkfs.ext4 /dev/sdb
# create the bootable usb
time dd if=/home/mike/Desktop/files/iso/archlinux-2021.10.01-x86_64.iso of=/dev/sdb bs=1M status=progress

