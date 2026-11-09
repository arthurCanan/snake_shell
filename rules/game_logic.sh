#!/bin/bash

update_score () {
    SCORE=$((SCORE + $1))
    print_score
}

game_over() {
    tput cvvis
    stty echo
    sleep $DELAY
    trap exit ALRM
    tput cup $ROWS 0
    exit
}
