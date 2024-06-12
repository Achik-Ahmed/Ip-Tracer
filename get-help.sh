#!/bin/bash

# Function to install required packages
install_packages() {
    echo "Checking for required packages..."
    pkg update -y && pkg upgrade -y

    # Install figlet
    if ! command -v figlet &> /dev/null; then
        echo "Installing figlet..."
        pkg install figlet -y
    else
        echo "figlet is already installed."
    fi

    # Install ruby
    if ! command -v ruby &> /dev/null; then
        echo "Installing ruby..."
        pkg install ruby -y
    else
        echo "ruby is already installed."
    fi

    # Install lolcat
    if ! command -v lolcat &> /dev/null; then
        echo "Installing lolcat..."
        gem install lolcat
    else
        echo "lolcat is already installed."
    fi
}

# Function to display the colorful banner
display_banner() {
    clear
    figlet -f slant "GetHelp" | lolcat
    echo "Welcome to the GetHelp script!" | lolcat
    echo "Choose an option below:" | lolcat
}

# Links to various resources
website_link="https://www.termuxcommands.com/"
whatsapp_group_link="https://chat.whatsapp.com/CntxW2PbjwT6meNgv7xoLh"
whatsapp_channel_link="https://whatsapp.com/channel/0029Va9BpayHwXbA9dtfo93w"
telegram_channel_link="https://t.me/learn_termux_linux"
youtube_channel_link="https://youtube.com/@TermuxCommands?si=KMGdklzJ2EsJmntb"
facebook_page_link="https://www.facebook.com/profile.php?id=61553455056414&mibextid=ZbWKwL"

# Install required packages
install_packages

# Display the banner
display_banner

# Menu options
printf "1. \e[1;36mOpen Website\e[0m\n"
printf "2. \e[1;36mOpen WhatsApp Group\e[0m\n"
printf "3. \e[1;36mOpen WhatsApp Channel\e[0m\n"
printf "4. \e[1;36mOpen Telegram Channel\e[0m\n"
printf "5. \e[1;36mOpen YouTube Channel\e[0m\n"
printf "6. \e[1;36mOpen Facebook Page\e[0m\n"
printf "0. \e[1;36mExit\e[0m\n"

read -p "Enter your choice (0-6): " choice

# Handle user choice
case $choice in
    1)
        xdg-open "$website_link"
        ;;
    2)
        xdg-open "$whatsapp_group_link"
        ;;
    3)
        xdg-open "$whatsapp_channel_link"
        ;;
    4)
        xdg-open "$telegram_channel_link"
        ;;
    5)
        xdg-open "$youtube_channel_link"
        ;;
    6)
        xdg-open "$facebook_page_link"
        ;;
    0)
        echo "Exiting GetHelp script. Goodbye!" | lolcat
        exit 0
        ;;
    *)
        echo "Invalid choice. Please enter a number between 0 and 6." | lolcat
        ;;
esac
