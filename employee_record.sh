#!/bin/bash

  while :
  do
  clear 
  echo "Welcome to Employee Record"
# usr_cmd=0
# while [ $usr_cmd -ne 5 ]
# do
  echo "1: Add New Employee"
  echo "2: Search Employee"
  echo "3: Delete Record"
  echo "4: View All Records"
  echo "5: Exit"
  read -p "Enter Your Choice : " usr_cmd
  clear

  case $usr_cmd in
  1)echo "Add New Record"
    read -p "Enter Employee's Name" name
    read -p "Enter Contact No : " ph_no
    read -p "Enter Address : " address
    read -p "Enter Department : " dept
    read -p "Enter Salary : " sal
  clear
  echo "New Employee's Info: "
  echo "Name : $name."
  echo "Contact No : $ph_no"
  echo "Department : $dept"
  echo "Address : $address"
  echo "Salary : $sal"
  printf "\n%-20s|%-20s|%-20s|%-20s|%-10s|\n" $name $ph_no $dept $address $sal >> emprecdir.log
  echo "----------------------------------------------------------------------------------------------|" >> emprecdir.log
  echo "Saved Successfully"
  ;;
  2) echo "SEARCH EMPLOYEE"
  read -p "Enter Employee Name : " search_query
  clear
  echo "Result: " 
  grep -i $search_query emprecdir.log
  ;;
  3)echo "DELETE RECORD" 
    read -p "Enter contact name to be Deleted(case-sensitive): " delete_string
    sed -i -e "/$delete_string/d" emprecdir.log
    echo "Delete Successful" ;;
  4) echo "All Records : "
     echo "" 
     cat emprecdir.log;;
  5)break;;
  *)echo "INVALID CHOICE!!! ";;
  esac;

  read -p "Press 5 to QUIT, Anything else to return to Main Menu" confirm_exit
  if [ $confirm_exit -eq 5 ]
  then break
  fi
  done