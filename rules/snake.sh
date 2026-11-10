#!/bin/bash

grow_snake() {
    LAST_POS_X=( 
        # "${LAST_POS_X[0]}" 
        # "${LAST_POS_X[0]}" 
        "${LAST_POS_X[0]}" 
        "${LAST_POS_X[@]}" 
    )

    LAST_POS_Y=( 
        # "${LAST_POS_Y[0]}" 
        # "${LAST_POS_Y[0]}" 
        "${LAST_POS_Y[0]}" 
        "${LAST_POS_Y[@]}" 
    )
}

move() {
    # w key = up
    # s key = down
    # a key = left
    # d key = right
    handle_input

    # add walls and self collision detection function here

    tput cup ${LAST_POS_Y[0]} ${LAST_POS_X[0]}
    printf " "

    LAST_POS_X=("${LAST_POS_X[@]:1}" "$POS_X")
    LAST_POS_Y=("${LAST_POS_Y[@]:1}" "$POS_Y")

    tput cup 4 62
    echo "SIZE=${#LAST_POS_X[@]}"

    #LAST_POS_X[$LAST_ELEMENT]=$POS_X
    #LAST_POS_Y[$LAST_ELEMENT]=$POS_Y

    LAST_ELEMENT=$(( ${#LAST_POS_X[@]} - 1 ))

    check_apple_collision
    #grow_snake
    draw_snake
}