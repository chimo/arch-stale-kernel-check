# Archlinux Stale Kernel Check

This small script compares the running kernel version (`uname -r`) and the
kernel version on the filesystem (`file /boot/vmlinuz-linux`). If the versions
differ, it prints "Reboot required.". If not, it prints "No reboot required."

