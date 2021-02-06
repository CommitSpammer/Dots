#!/bin/bash
echo "Enter the desired length of your password:"
read PASS_LENGTH
for password in $(seq 1 3);
do
    
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH

done
