#!/bin/bash
#send starwars to everyone on the system
for user in $(who | awk '{print $2}')
do
    telnet towel.blinkenlights.nl > "/dev/$user" 
done
