#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 10995712 2173e59885590b14c21bc30d980143e59128b734 8323072 328556e0bb6450864e48f0b53902cc92720ce039
fi

if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:10995712:2173e59885590b14c21bc30d980143e59128b734; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:8323072:328556e0bb6450864e48f0b53902cc92720ce039 EMMC:/dev/block/bootdevice/by-name/recovery 2173e59885590b14c21bc30d980143e59128b734 10995712 328556e0bb6450864e48f0b53902cc92720ce039:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
