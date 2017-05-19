#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:12528940:61be8346952748d744e27370399564de666225eb; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:11148584:da009539ebbc5954738d54399676d6ca0c9a4198 EMMC:/dev/block/bootdevice/by-name/recovery 61be8346952748d744e27370399564de666225eb 12528940 da009539ebbc5954738d54399676d6ca0c9a4198:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
