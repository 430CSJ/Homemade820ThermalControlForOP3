#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode

htc_script_path="/system/bin/htc_script"

until [ "`getprop sys.boot_completed`" = "1" ]
do
	sleep 10
done
nohup $htc_script_path > /dev/null 2>&1 &
sleep 3
nohup $htc_script_path > /dev/null 2>&1 &
sleep 3
nohup $htc_script_path > /dev/null 2>&1 &