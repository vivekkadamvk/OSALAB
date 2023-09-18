#! /bin/bash



 cpu()
  {
   lscpu
  }
 pci()
  {
   lspci
  }
 usb()
  {
   lsusb
  }
echo "MENU:\n1.CPU Information\n2.PCI Information\n3.USB Information"
echo "Enter Your Choice:"
read choice

case "$choice" in
 1 ) cpu ;;
 2 ) pci ;;
 3 ) usb ;;
 * ) echo "Invalid"
esac
