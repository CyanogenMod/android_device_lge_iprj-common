#!/system/bin/sh

# No path is set up at this point so we have to do it here.
PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

target=`getprop ro.product.device`

case "$target" in
  "i_atnt" | "i_skt" | "p930" | "su640" )
	setprop gsm.version.baseband `strings -n 12 /system/etc/firmware/misc_mdm/image/amss.mbn | grep MDM9200 | head -1`
	;;
  "i_vzw" | "vs920" )
	setprop gsm.version.baseband `strings -n 12 /firmware/image/modem.b05 | grep -o "VS920.*-M8660.*" | head -1`
	;;
esac
