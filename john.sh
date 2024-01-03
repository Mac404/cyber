#!/usr/bin/bash

#/usr/share/metasploit-framework/data/wordlists


cd /home/parallels/Documents
#cp /usr/share/wordlists/rockyou.txt.gz .
#gunzip rockyou.txt.gz
john --wordlist=rockyou.txt priyanka.txt

john -format=crypt priyanka.txt
