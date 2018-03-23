#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 14462976 1df213daa2f43af7e8d549ebcf4142e4c412fbb9 8747008 e75c3b0567567c204c685199cdbaf9e63e85a21f
fi
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:14462976:1df213daa2f43af7e8d549ebcf4142e4c412fbb9; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:8747008:e75c3b0567567c204c685199cdbaf9e63e85a21f EMMC:/dev/block/bootdevice/by-name/recovery 1df213daa2f43af7e8d549ebcf4142e4c412fbb9 14462976 e75c3b0567567c204c685199cdbaf9e63e85a21f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
