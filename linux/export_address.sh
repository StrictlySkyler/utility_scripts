ADAPTER=/sys/class/net/wlan0

if [ -x $ADAPTER ]; then
  DEVICE='wlan0'
else 
  DEVICE='eth0'
fi

ADDRESS=`ifconfig $DEVICE|grep 'inet addr:'|sed s/\ \*inet\ addr:/''/|sed s/\ \*Bcast:\.\*/''/`
export ROOT_URL='http://'$ADDRESS
