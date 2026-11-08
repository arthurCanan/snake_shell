#!/bin/bash

draw_walls() {
    clear

    #top border
    tput setf 7
    tput cup $FIRST_ROW $FIRST_COL
    x=$FIRST_COL

    while [ "$x" -le "$LAST_COL" ];
    do
        printf %b "$WALL_CHAR"
        x=$(( $x + 1));
    done

    #sides border
    x=$FIRST_COL
    while [ "$x" -le "$LAST_ROW" ];
    do
        tput cup $x $FIRST_COL; printf %b "$WALL_CHAR"
        tput cup $x $LAST_COL; printf %b "$WALL_CHAR"
        x=$(( $x + 1));
    done

    #bottom border
    tput cup $LAST_ROW $FIRST_COL
    x=$FIRST_COL

    while [ "$x" -le $LAST_COL ];
    do 
        printf %b "$WALL_CHAR"
        x=$(( $x + 1 ))
    done

    echo -e "\n"
    tput setf 9

}