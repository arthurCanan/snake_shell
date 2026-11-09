#!/bin/bash

draw_apple() {
    tput setf 1
    tput cup $APPLE_Y $APPLE_X
    printf %b "$APPLE_CHAR"
    tput setf 9
}