#!/bin/bash

if [ $# -lt 1 ] ; then
  echo "Usage: $0 [host]"
  exit 1
fi

ssh -t -L 5900:localhost:5900 $1 'x11vnc -localhost -display :0 '
