#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:12535084:dfbe9def034c6f09563ec0e074ba87ccfda4b10a; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:11154728:a87f012637a624cad49d7bfb64cae6c3f708ccb3 EMMC:/dev/block/bootdevice/by-name/recovery dfbe9def034c6f09563ec0e074ba87ccfda4b10a 12535084 a87f012637a624cad49d7bfb64cae6c3f708ccb3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
