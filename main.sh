#!/bin/bash

source ./config.sh

# source ./views/*
# source ./rules/*
source ./views/board.sh
source ./views/score.sh
source ./rules/game_logic.sh

echo -e "Press ENTER to play, or ESC to quit\n"
read -s -n1 play

case "$play" in
    $'\e') 
        echo "closing the game"
        exit 0
        ;;

    $'')
        draw_walls
        print_score
        
        tput cup 27 8
        echo -e "w - up, s - down, a - left, d - right, q - quit \n"
        ;;
esac 
    