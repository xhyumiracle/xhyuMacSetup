
if [ "$1" == 'off' ]
then
  VBoxManage controlvm "OffsecVM-2017.1-i686" poweroff --type headless
elif [ "$1" == 'pause' ]
then
  VBoxManage controlvm "OffsecVM-2017.1-i686" pause --type headless
elif [ "$1" == 'resume' ]
then
  VBoxManage controlvm "OffsecVM-2017.1-i686" resume --type headless
elif [ "$1" == 'status' ]
then
  echo `vboxmanage showvminfo "OffsecVM-2017.1-i686" | grep -c "running (since"`
else
  is_running=`vboxmanage showvminfo "OffsecVM-2017.1-i686" | grep -c "running (since"`
  if [ "$is_running" == '0' ] 
  then
    echo 'starting kali..'
    VBoxManage startvm "OffsecVM-2017.1-i686" --type headless
  fi
  kali_ip=`VBoxManage guestproperty get "OffsecVM-2017.1-i686" "/VirtualBox/GuestInfo/Net/1/V4/IP" | cut -d' ' -f 2`
  ssh root@$kali_ip
fi
