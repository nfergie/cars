#! /bin/bash
# cars.sh
# Nic Fergie
echo "My Old Cars Inventory System"
echo "----------------------------"
echo "1. Add a Car"
echo "2. List the Cars"
echo "Q. Quit"

read input
while [ $input != "Q" ]
do
  case $input in
    "2") sort My_old_cars;;
    "1") echo "Enter Year"
    read Year
    echo "Enter Make"
    read Make
    echo "Enter Model"
    read Model
    echo "$Year:$Make:$Model" >> My_old_cars;;
    "Q") input="Q"
    break;;
  esac
  echo "1. Add a Car"
  echo "2. List the Cars"
  echo "Q. Quit"
  read input
done
