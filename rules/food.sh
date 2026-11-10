#!/bin/bash

apple() {
    #x and y based on area defined in config.sh
    APPLE_X=$[( RANDOM % ( $[ $AREA_MAX_X - $AREA_MIN_X ] + 1 ) ) + $AREA_MIN_X ]
    APPLE_Y=$[( RANDOM % ( $[ $AREA_MAX_Y - $AREA_MIN_Y ] + 1 ) ) + $AREA_MIN_Y ]
}

coordinates_check_and_print() {
    LAST_ELEMENT=$(( ${#LAST_POS_X[@]} - 1 ))

    x=0
    apple 

    while [ "$x" -le "$LAST_ELEMENT" ] 
    do
        if [ "$APPLE_X" = "${LAST_POS_X[$x]}" ] && [ "$APPLE_Y" -eq "${LAST_POS_Y[$x]}" ]; 
        then    
            x=0
            apple
        else
            x=$(( $x + 1 ))
        fi
    done

    draw_apple
}


check_apple_collision() {
    if [ "$POS_X" = "$APPLE_X" ] && [ "$POS_Y" -eq "$APPLE_Y" ]; 
    then    
        update_score 10
        coordinates_check_and_print
        grow_snake
    fi
}