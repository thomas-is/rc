#!/bin/bash



CSI() { printf "\033["; }
SGR() { CSI; printf "${1:-0}m"; }

CUU() { CSI; printf "${1:-1}a"; }

BOLD()   { CSI; SGR "1"; }
#FG_RGB() { CSI; SGR "38;2;${1:-255};${2:-255};${3:-255}"; echo "$1 $2 $3"; }
BG_RGB() { CSI; SGR "48;2;${1:-255};${2:-255};${3:-255}"; }

FG() { CSI; SGR "38;5;${1:-0}"; }
BG() { CSI; SGR "48;5;${1:-0}"; }

RST="\033[0m\033m"
RED="\033[31m\033m"
GRN="\033[32m\033m"
ORG="\033[33m\033m"
BLU="\033[34m\033m"

render() {
  BG $1
  printf " %3d " $1
  printf "$RST"
}

printf "$RST"

for line in {0..1}
do
  for col in {0..7}
  do
    let N=$line*8+$col
    render $N
  done
  printf "\n"
done
printf "\n"

for line in {0..5}
do
  for col in {16..51}
  do
    let N=$line*36+$col
    render $N
  done
  printf "\n"
done
printf "\n"

for N in {232..255}
do
  render $N
done
printf "\n"
printf "$RST"
