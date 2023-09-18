#!/bin/bash


createdir()
{
 echo " Enter your name of Directory "
 read dir_nam
 mkdir $dir_nam
 pwd
}

changedir()
{
 echo " Enter Directory you want to Enter "
 read nam
 cd $nam
 pwd
}

createfile()
{
 echo " enter file name "
 read Fnam
 cat > Fnam
}

creainode()
{
 echo " Enter Filename"
 read ich
 ls -i $ich
}
while true
do 
 echo "MENU:\n1.Create Directory\n2.Change Directory\n3.Create File\n4.Show Inode"
 echo "Enter Your Choice:"
 read choice
 case "$choice" in
 1 ) createdir ;;
 2 ) changedir ;;
 3 ) createfile ;;
 4 ) creainode ;;
 * ) echo "Invalid"

esac
done
