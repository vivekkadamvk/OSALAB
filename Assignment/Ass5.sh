#!/bin/bash
f1()
{
 ps 
}
f2()
{
 ps -l 
}
f3()
{
 ps aux 
}
f4()
{
 ps aux|more 
}
f5()
{
 ps lax|more 
}
f6()
{
 top
}
f7()
{
 echo "Enter the value to increment"
 read y
 echo "Enter the process ID value"
 read z
 renice +$y $z 
}
f8()
{
  echo "Process ID value to kill the process"
 read z
 kill $z 
}

while true
do
{
echo "      Menu:"
echo "1)Print the currently running processes on the system Command : ps"
echo "2)Print the more information about currently running processes on the system"
echo "3)Show Total Processes Command : ps aux"
echo "4)Show All Users Processes Command : ps aux|more"
echo "5)Show All Process Info Command : ps lax|more"
echo "6)Show the list of working processes and software Command : top"
echo "7)Show the priority value of process "
echo "8)Kill the process : Command : kill "
}
 
read x
case $x in
 1 ) f1  ;;
 2 ) f2  ;;
 3 ) f3  ;;
 4 ) f4  ;;
 5 ) f5  ;;
 6 ) f6  ;;
 7 ) f7  ;;
 8 ) f8  ;;

 * ) exit ;;
esac
done