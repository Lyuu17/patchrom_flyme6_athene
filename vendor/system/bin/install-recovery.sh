#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 14465024 a695f3f436bcba67f9a3532038152ab9a18a108a 8749056 5a5e206e66cd9dde726d648e477bbae963458e90
fi
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:14465024:a695f3f436bcba67f9a3532038152ab9a18a108a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:8749056:5a5e206e66cd9dde726d648e477bbae963458e90 EMMC:/dev/block/bootdevice/by-name/recovery a695f3f436bcba67f9a3532038152ab9a18a108a 14465024 5a5e206e66cd9dde726d648e477bbae963458e90:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
