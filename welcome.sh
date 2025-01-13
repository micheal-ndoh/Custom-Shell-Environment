#!/bin/bash
function welcome() {
figlet "Welcome $USER"
watch -n1 "date '+%T' | figlet -f script -k"
cowsay "....You can do it !!!.... "
}
