#!/bin/bash
#export shell="$HOME/.oh-my-shell"
#shell_theme="apple"
#name="$USER"
#figlet "welcom $name"




function quick-search() {
  input=$1
  if [ "$1" == "ho" ]; then
    cd ~/home
  elif [ "$1" == "Doc" ]; then
    cd ~/Documents
  elif [ "$1" == "Down" ]; then
    cd ~/Downloads
  elif [ "$1" == "Desk" ]; then
    cd ~/Desktop
  elif [ "$1" == "Pic" ]; then
    cd ~/Pictures
  elif [ "$1" == "Vid" ]; then
    cd ~/Videos
  elif [ "$1" == "Mus" ]; then
    cd ~/Music
  else
    echo "No match"
  fi
