## AnyKernel setup
# begin properties
properties() { '
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=timelm
device.name2=v60
device.name3=jhatpat
supported.versions=
'; } # end properties

# shell variables
block=boot;
is_slot_device=auto;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;
no_block_display=1

## AnyKernel methods (DO NOT CHANGE)
. tools/ak3-core.sh;

## Install Logic
ui_print "  -> Preparing Jhat Pat Kernel files...";

# Move files to root for flashing
mv $home/kernels/Image $home/Image;
#mv $home/kernels/dtb $home/dtb;

ui_print "  -> Installing Jhat Pat Kernel (Next Gen 2.0 )...";

## AnyKernel boot install
split_boot;

flash_boot;
#flash_dtb; # Mandatory: Flashes your modified display/GPU timings
## end boot install
