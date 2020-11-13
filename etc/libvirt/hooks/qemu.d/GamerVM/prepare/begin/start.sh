#!/bin/bash

source "/etc/libvirt/hooks/kvm.conf"

# Set CPU to Performance
echo performance | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

# Unbind VTconsoles
echo 0 > /sys/class/vtconsole/vtcon0/bind
echo 0 > /sys/class/vtconsole/vtcon1/bind

# Unbind EFI-Framebuffer
echo efi-framebuffer.0 > /sys/bus/platform/drivers/efi-framebuffer/unbind

# Avoid a Race condition by waiting 2 seconds. This can be calibrated to be shorter or longer if required for your system
sleep 2

# Unload all Nvidia drivers
modprobe -r nvidia_drm
modprobe -r nvidia_modeset
modprobe -r nvidia

# Unbind the GPU from display driver
virsh nodedev-detach $VIRSH_GPU_VIDEO
virsh nodedev-detach $VIRSH_GPU_AUDIO 

# Load VFIO Kernel Module  
modprobe vfio
modprobe vfio-pci  
modprobe vfio_iommu_type1
