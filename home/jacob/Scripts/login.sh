#!/bin/bash

echo "Please select what to startup.
1. Xmonad
2. Windows 10
3. TTY"

read os

case $os in
	1) xinit;;
	2) sudo virsh start GamerVM &;;
	3) clear;;
	*) echo "Invalid entry." && /home/jacob/Scripts/login.sh
esac
