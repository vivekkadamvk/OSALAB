#!/bin/bash

createfile()
{
 echo " Enter file name: "
 read Fnam
 cat > $Fnam
}


tran1()
{
 echo " Enter File Name: "
 read nam
 echo " Conversion from Capital to Small "
 tr '[A-Z]' '[a-z]' <$nam>output.txt
 cat output.txt
}


tran2()
{
 echo " Enter File Name: "
 read snam
 echo " Conversion from Small to Capital "
 tr '[a-z]' '[A-Z]' <$snam>output.txt
 cat output.txt
}
 
while true
do 
 echo "\nMENU:\n1.Create File\n2.Conversion Capital to Small\n3.Conversion Small To Capital\n4.Exit\n"
 echo "Enter Your Choice:"
 read choice
 case "$choice" in
 1 ) createfile ;;
 2 ) tran1 ;;
 3 ) tran2 ;;
 4 ) exit ;;
 * ) echo "Invalid"

esac
done
