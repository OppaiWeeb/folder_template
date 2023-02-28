#! /bin/bash

green='\033[0;32m'
white='\033[0;00m'
INSTALL_DIR="$HOME/.local/share/template_tek"
BIN_DIR="$HOME/.local/bin/"
BIN=template_tek
install()
{
    printf "${green} [+] install ressources on the folder\n"
    if [[ ! -d $INSTALL_DIR ]]; then
        git clone https://github.com/OppaiWeeb/folder_template $INSTALL_DIR
    else
        (cd $INSTALL_DIR && git fetch && git pull)
    fi
    mkdir -p $BIN_DIR

    printf "${green} [+] install template_tek\n"
    ln -sf $INSTALL_DIR/$BIN $BIN_DIR/$BIN

    printf "${green} [+] get user lib from epitech\n${white}"
    if [ -d $INSTALL_DIR ]; then
        (cd $INSTALL_DIR/ && git pull origin master)
    else
        read -p "enter your epitech lib_workshop git: " lib_dir
        git clone $lib_dir $INSTALL_DIR;
    fi
    printf "${green} [!] Install done"
}

uninstall()
{
    rm -rf $INSTALL_DIR
    rm -rf $BIN_DIR/$BIN
    printf "${green} [-] Uninstall done"
}


if [[ $1 == "uninstall" ]]; then
    uninstall
else
    install
fi
