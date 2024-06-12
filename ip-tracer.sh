#!/bin/bash

# Color variables
green="\033[32;1m"
yellow="\033[33;1m"
indigo="\033[34;1m"
red="\033[31;1m"
purple="\033[37;1m"
cyan="\033[36;1m"
white="\033[39;1m"

banner() {
    ip=$(w3m -dump https://ipapi.co/ip)
    echo "Your ip : $ip"
    echo "    "
    echo -e $white"\a     NO!"$red"                          MNO!   "
    echo -e $white"     MNO!!"$red"         [AMR]"$red"          MNNOO!    "
    echo -e $white"   MMNO!"$red"                           MNNOO!! "
    echo -e $white"  MNOONNOO!"$red"   MMMMMMMMMM"$white"PPPOII!"$red"   MNNO!!!!  "
    echo -e $white" !O! NNO!"$red" MMMMMMMMMMMMM"$white"PPPOOOII!!"$red" NO!       "
    echo -e $red"       ! MMMMMMMMMMMMM"$white"PPPPOOOOIII! !       "
    echo -e $red"        MMMMMMMMMMMM"$white"PPPPPOOOOOOII!!       "
    echo -e $red"        MMMMMOOOOOO"$white"PPPPPPPPOOOOMII!       "
    echo -e $red"        MMMMM..    OPP"$white"MMP    .,OMI!       "
    echo -e $red"        MMMM::"$purple"   o.,"$red"OP"$white"MP"$purple",.o"$white"   ::I!!       "
    echo -e $red"          NNM:::.,,OOPM!P"$white",.::::!!         "
    echo -e $red"         MMNNNNNOOOOPMO"$white"!!IIPPO!!O!        "
    echo -e $red"         MMMMMNNNNOO"$white":!!:!!IPPPPOO!        "
    echo -e $red"          MMMMMNNOOMMNN"$white"IIIPPPOO!!         "
    echo -e $red"             MMMONNMMNNN"$white"IIIOO!                "
    echo -e $white"           MN"$red" MOMMMNNN"$white"IIIIIO!"$red" OO          "
    echo -e $white"          MNO! "$red"iiiiii"$white"iiiiiI"$red" OOOO         "
    echo -e $white"     NNN.MNO!   "$red"O"$yellow"!!!!!!!!!"$white"O"$red"   OONO NO!    "
    echo -e $white"    MNNNNNO!    "$red"OOOOO"$white"OOOOOO"$red"    MMNNON!    "
    echo -e $white"      MNNNNO!    "$red"PPP"$white"PPPPPP"$red"    MMNON!      "
    echo -e $white"         OO!"$red"                   ON!        "
    echo -e $white
}

Myip() {
    read -p "Enter to continue !!! " enter
    command=$(wget https://ipapi.co/yaml/ -q -O .-)
    echo -e $yellow"\a["$red"+"$yellow"]"$white"Check Your IP"$green" >>>>>>>>"
    echo -e $green
    cat .-
    echo " "
    echo -e $yellow"["$red"+"$yellow"]"$white"Check Your IP"$green" >>>>>>>>"
    rm .-
    exit
}

iptarget() {
    echo -e $yellow"Input IP Address [ex : 123.456.789] "
    echo -e $white "╭─"$green"localhost"$cyan" ~/TERMUX"$white
    read -p " ╰─$ " target
    command=$(wget https://ipapi.co/$target/yaml/ -q -O .-)
    echo -e $yellow"\a["$red"+"$yellow"]"$white"IP Target"$green" >>>>>>>>>"
    echo -e $green
    cat .-
    echo " "
    echo -e $yellow"["$red"+"$yellow"]"$white"IP Target"$green" >>>>>>>>>"
    rm .-
    exit
}

about() {
    sleep 0.15
    echo -e $cyan'''
    Maintain by   : \033[32;1mAchik Ahmed\033[39;1m
    Version       : \033[32;1m1.0\033[39;1m
    Date          : \033[32;1mJune 2024\033[39;1m
    Blog          : \033[32;1mhttps://www.termuxcommands.com\033[39;1m
    Github        : \033[32;1mhttps://github.com/Achik-Ahmed\033[39;1m
    YouTube       : \033[32;1mTermux Commands\033[39;1m
    WhatsApp      : \033[32;1m+918822535788\033[39;1m
'''$white
}

menuoption() {
    banner
    echo -e $red"        ~"$yellow"{"$green"1"$yellow"}"$purple"--"$white"My ip        "
    echo -e $red"        ~"$yellow"{"$green"2"$yellow"}"$purple"--"$white"Track Ip Target        "
    echo -e $red"        ~"$yellow"{"$green"3"$yellow"}"$purple"--"$white"About Me            "
    echo -e $red"        ~"$yellow"{"$green"4"$yellow"}"$purple"--"$white"Quit            "
    echo -e $white "╭─"$green"localhost"$cyan" ~/TERMUX"$white
    read -p " ╰─$ " get
    if [ "$get" -eq 1 ]; then
        Myip
    elif [ "$get" -eq 2 ]; then
        iptarget
    elif [ "$get" -eq 3 ]; then
        about
    elif [ "$get" -eq 4 ]; then
        echo "Bye bye :)"
        exit
    else
        sleep 1
        menuoption
    fi
}

menuoption
