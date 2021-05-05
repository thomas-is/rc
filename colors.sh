#!/bin/sh

RST="\033[0m\033m"
RED="\033[0;31m\033m"
GRN="\033[0;32m\033m"
ORG="\033[0;33m\033m"
BLU="\033[0;34m\033m"

color() {
  printf "\033[${2:-0};${1:-0}m\033m"
}

for I in 0 1 2 3 4 5 6 7
do
  color; printf "3$I "
  for J in 0 1 2 3 4 5 6 7 8 9 10 11 12
  do
    color 3$I $J
    printf "$J"
    color
    printf " "
  done
  echo
done
color
