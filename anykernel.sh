### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Alchemy
kernel.compiler=TRB Clang
kernel.made=Pranav Temkar
message.word=Join @voltageos
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=1
device.name1=raphael
device.name2=raphaelin
device.name3=cepheus
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

## boot shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=auto;
ramdisk_compression=auto;
no_block_display=true; # Hide block display. Meaningless for A-only.
patch_vbmeta_flag=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

## AnyKernel install
# vendor_kernel_boot install
split_boot; # skip unpack/repack ramdisk, e.g. for dtb on devices with hdr v4 and vendor_kernel_boot

flash_boot;
## end vendor_kernel_boot install

flash_dtbo;
## end install
