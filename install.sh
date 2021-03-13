#!/bin/bash

# Yes/No/All
OVERWRITE=""

for RC in .bashrc .bash_aliases .vimrc
do

  if [ -f ~/$RC ] ; then
    if [ "$OVERWRITE" != "a" ] ; then
      printf "overwrite ~/.$RC ? [y]es [n]o [a]ll e[x]it "
      read -n 1 OVERWRITE
      OVERWRITE=$( echo $OVERWRITE | tr '[:upper:]' '[:lower:]' )
      printf "\n"
      if [ "$OVERWRITE" = "x" ] ; then
        exit 1
      fi
    fi
    if [ "$OVERWRITE" = "y" ] || [ "$OVERWRITE" = "a" ] ; then
      echo "rm ~/.$RC"
      rm ~/.$RC
    else
      continue
    fi
  fi

  echo "cp $(pwd)/$RC ~/.$RC"
  cp $(pwd)/$RC ~/.$RC

done

