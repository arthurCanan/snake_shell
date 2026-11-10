#!/bin/bash

grow_snake() {
    LAST_POS_X=( $[LAST_POS_X[0]] $[LAST_POS_X[0]] $[LAST_POS_X[0]] $LAST_POS_X[@] )
    LAST_POS_Y=( $[LAST_POS_Y[0]] $[LAST_POS_Y[0]] $[LAST_POS_Y[0]] $LAST_POS_Y[@] )

    RET=1
    while [ "$RET" -eq 1 ];
    do
        apple
        RET=$?
    done

    coordinates_check_and_print
}

move() {
    # w key = up
    # s key = down
    # a key = left
    # d key = right
    handle_input

    # add walls and self collision detection functionhere

    tput cup ${LAST_POS_Y[0]} ${LAST_POS_X[0]}
    printf " "

    LAST_POS_X=( `echo "${LAST_POS_X[@]}" | cut -d " " -f 2-` $POS_X )
    LAST_POS_Y=( `echo "${LAST_POS_Y[@]}" | cut -d " " -f 2-` $POS_Y )
    
    tput cup 4 62
    echo "SIZE=${#LAST_POS_X[@]}"

    LAST_POS_X[$LAST_ELEMENT]=$POS_X
    LAST_POS_Y[$LAST_ELEMENT]=$POS_Y

    draw_snake

    check_apple_collision
}