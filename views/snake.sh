#!/bin/bash

draw_snake() {
    tput setf 2
    tput cup $POS_Y $POS_X
    printf %b "$SNAKE_CHAR"
}
