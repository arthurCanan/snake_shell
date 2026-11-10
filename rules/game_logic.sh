#!/bin/bash

update_score () {
    SCORE=$((SCORE + $1))
    print_score
}

game_over() {
    tput cvvis
    stty echo
    sleep $RESTART_DELAY
    trap exit ALRM
    tput cup $ROWS 0
    return 1
}

check_collision() {
    #( sleep "$DELAY" && kill -ALRM $$ ) &
    if [ "$POS_X" -le "$FIRST_COL" ] || [ "$POS_X" -ge "$LAST_COL" ]; 
    then    
        tput cup 29 16
        stty echo
        echo " GAME OVER! You hit a wall"
        game_over
        return 1
    elif [ "$POS_Y" -le "$FIRST_ROW" ] || [ "$POS_Y" -ge "$LAST_ROW" ];
    then    
        tput cup 29 16
        stty echo
        echo " GAME OVER! You hit a wall"
        game_over
        return 1
    fi

    LAST_ELEMENT=$(( ${#LAST_POS_X[@]} - 1 ))

    x=1
    while [ "$x" -le "$LAST_ELEMENT" ];
    do 
        if [ "$POS_X" = "${LAST_POS_X[$x]}" ] && [ "$POS_Y" = "${LAST_POS_Y[$x]}" ];
        then    
            tput cup 29 16
            stty echo
            echo " GAME OVER! You ate yourself"
            game_over
            return 1
        fi
        x=$(( $x + 1 ))
    done
}