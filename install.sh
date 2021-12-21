#! /bin/bash

green='\033[0;32m'
white='\033[0;00m'

printf "${green} [+] install ressources on the folder\n"
if [[ ! -d $HOME/.local/share/template_tek ]]; then
    git clone https://github.com/OppaiWeeb/folder_template $HOME/.local/share/template_tek 
fi
mkdir -p $HOME/.local/bin

printf "${green} [+] install template_tek\n"
cp template_tek $HOME/.local/bin/

printf "${green} [+] get user lib from epitech\n${white}"
if [ -d $HOME/.local/share/template_tek/lib/ ]; then
    (cd $HOME/.local/share/template_tek/lib/ && git pull origin master)
else
    read -p "enter your epitech lib_workshop: " lib_dir
    git clone $lib_dir $HOME/.local/share/template_tek/lib;
fi
printf "${green} [!] Install done"

