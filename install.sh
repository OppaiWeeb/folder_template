#! /bin/bash

green='\033[0;32m'
white='\033[0;00m'

printf "${green} [+] install ressources on the folder\n"
mkdir -p $HOME/.local/share/template_tek $HOME/.local/bin
cp -r rsrc/* $HOME/.local/share/template_tek

printf "${green} [+] install template_tek\n"
cp template_tek $HOME/.local/bin/

printf "${green} [+] get user lib from epitech\n${white}"
read -p "enter your epitech lib_workshop: " lib_dir
git clone $lib_dir $HOME/.local/share/template_tek/lib
rm -rf $HOME/.local/share/template_tek/lib/.git

printf "${green} [!] Install done"
