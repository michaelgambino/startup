# list partitione
parted -l
# zero fill drive, time displays time taken after
time dd if=/dev/zero of="drive" bs=1024 status=progress

# random fill drive
dd if=/dev/urandom of=/dev/sda