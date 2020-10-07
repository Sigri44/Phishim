#!/bin/bash

trap 'printf "\n";stop;exit 1' 2

clear

for f in ./src/*; do
  [[ -e "${f}" ]] && source "${f}"
done

banner
dependencies
menu
