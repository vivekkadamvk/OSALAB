#!/bin/bash



core()
{
 echo " Number of Cores: "
 lscpu|grep CPU
}

vend()
{
 echo " Vendor ID: "
 lscpu|grep Vendor
}

arch()
{
 echo " Architecture: "
 lscpu|grep Archi
}

fami()
{
 echo " CPU Family "
 lscpu|grep family
}

opmo()
{
 echo " Operating Mode "
 lscpu|grep op-
}


while true 
do
 echo "\nMENU:\n1.Count of Cores\n2.Vendor ID\n3.Architecture\n4.CPU Family\n5.Operating Mode\n6.Exit\n"
 echo "Enter Your Choice:"
 read choice
 case "$choice" in
 1 ) core ;;
 2 ) vend ;;
 3 ) arch ;;
 4 ) fami ;;
 5 ) opmo ;;
 6 ) exit ;;
 * ) echo "Invalid"
esac 
done

