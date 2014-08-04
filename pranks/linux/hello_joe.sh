#!/bin/bash
#send hello user to everyone on the system
for user in $(who | awk '{print $2}')
do
    echo "hello joe" > "/dev/$user"
done
