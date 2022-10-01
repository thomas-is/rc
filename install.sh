#!/bin/bash

# Yes/No/All
OVERWRITE=""

BASE=$( dirname $0 )

FILES="$(cat <<-EOF
.bash_aliases
.bashrc
.tmux.conf
.vimrc
bin/color-chart
bin/duckduckgo
EOF
)"

mkdir -p ~/bin

for FILE in $FILES
do
  echo
  echo "~/$FILE"
  if [ -f ~/$FILE ] ; then
    if [ "$OVERWRITE" != "a" ] ; then
      diff --color ~/$FILE $BASE/$FILE
      printf "overwrite? [y]es [n]o [a]ll e[x]it "
      read -n 1 OVERWRITE
      OVERWRITE=$( echo $OVERWRITE | tr '[:upper:]' '[:lower:]' )
      printf "\n"
      if [ "$OVERWRITE" = "x" ] ; then
        exit 1
      fi
    fi
    if [ "$OVERWRITE" = "n" ] ; then
      continue
    fi
  fi
  echo "cp $BASE/$FILE ~/$FILE"
  cp $BASE/$FILE ~/$FILE
done

echo
echo "~/.git-prompt.sh"
wget -q "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh" -O ~/.git-prompt.sh
