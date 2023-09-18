#!/bin/bash


 unam1()
 {
  echo "Operating System Information ALL"
  uname -a
 }


 unam2()
 {
  echo "OS Nodename info "
  uname -n
 }


 unam3()
 {
  echo "OS Kernel Name "
  uname -s
 }


 unam4()
 {
  echo "OS Processor info "
  uname -p
 }


 wh()
 {
  echo "Logged User"
  who
 }

 whoam()
 {
  echo "Current User Name"
  whoami
 }


 unam5()
 {
  echo " Kernel Release "
  uname -r
 }


 unam6()
 {
  echo " Kernel Version "
  uname -v
 }


 unam7()
 {
  echo " Hardware Info "
  uname -i
 }

 unam8()
 {
  echo " Machine info "
  uname -m
 }


 while true 
do
  echo "MENU:\n1.Operating Sytem Info ALL\n2.OS Nodename\n3.OS Kernel Name\n4.OS PRocessor info\n5.Kernel Release\n6.Kernel Version\n7.Hardware Info\n8.Machine Info\n9.Logged in User\n10.Current User"
  echo "Enter Your Choice\n"
  read ch
  case "$ch" in
  1 ) unam1 ;;
  2 ) unam2 ;;
  3 ) unam3 ;;
  4 ) unam4 ;;
  5 ) unam5 ;;
  6 ) unam6 ;;
  7 ) unam7 ;;
  8 ) unam8 ;;
  9 ) wh ;;
  10 ) whoam ;;
  * ) echo "Invalid"
esac
done