#!/bin/bash

# Tool Name: Phishim
# Tool URI: https://github.com/SullFurix/Phishim/
# Description: Phishim is a phishing tool.
# Version: 4.0.0
# Author: SullFurix
# Author URI: https://github.com/SullFurix/
# Copyright: © 2020 SullFurix.
# License: GNU General Public License v3.0
# License URI: http://www.gnu.org/licenses/gpl-3.0.html

trap 'printf "\n";stop;exit 1' 2

clear

for f in ./src/*; do
  [[ -e "${f}" ]] && source "${f}"
done

banner
dependencies
menu
