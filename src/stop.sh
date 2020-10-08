#!/bin/bash

stop() {

  printf "\n"
  checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
  checkphp=$(ps aux | grep -o "php" | head -n1)

  if [[ $checkngrok == *'ngrok'* ]]; then
    pkill -f -2 ngrok > /dev/null 2>&1
    killall -2 ngrok > /dev/null 2>&1
    printf "\e[1;92m[\e[0m*\e[1;92m] Ngrok turn off\n"
  fi

  if [[ $checkphp == *'php'* ]]; then
    pkill -f -2 php > /dev/null 2>&1
    killall -2 php > /dev/null 2>&1
    printf "\e[1;92m[\e[0m*\e[1;92m] php turn off\n"
  fi
  printf "\n"
  printf "\e[1;92m see you soon :/ \e[0m\n"
}
