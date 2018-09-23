#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "You are not root!"
   exit 1
fi

nginx -s quit

nginx
