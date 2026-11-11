#!/bin/bash

source ./config.sh
source ./input.sh
# source ./views/*
# source ./rules/*
source ./views/board.sh
source ./views/score.sh
source ./views/food.sh
source ./views/snake.sh

source ./rules/game_logic.sh
source ./rules/food.sh
source ./rules/snake.sh

while [ "$QUIT_FLAG" -eq 0 ];
do
    clear
    echo "========== SNAKE GAME ==========

Keys:

W - UP
S - DOWN
A - LEFT
D - RIGHT
Q - QUIT
    "

    echo -e "Press ENTER to play, or ESC to quit\n"
    read -s -n1 play

    case "$play" in
        $'\e') 
            echo -e "\nclosing the game\n"
            QUIT_FLAG=1
            ;;

        $'')
    
            stty -echo
            tput civis
            #read RTN
            tput setb 0
            tput bold
            clear
            draw_walls
            print_score

            tput cup 27 8
            echo -e "w - up, s - down, a - left, d - right, q - quit \n"

            coordinates_check_and_print
            sleep 1

            while :
            do
                read -rsn1 -t "$DELAY" key
                case "$key" in
                    w|W) DIRECTION="w" ;;
                    s|S) DIRECTION="s" ;;
                    a|A) DIRECTION="a" ;;
                    d|D) DIRECTION="d" ;;
                    q|Q) break
                    ;;
                esac

                move || break
            done
            ;;

            # draw_walls
            # print_score
            # coordinates_check_and_print
    esac 
done   

exit 0