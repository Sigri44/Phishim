#!/bin/bash

for f in ./src/*; do
  [[ -e "${f}" ]] && source "${f}"
done


banner
dependencies
menu
