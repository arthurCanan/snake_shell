#!/bin/bash

handle_input() {
    case "$DIRECTION" in
        "w") 
            POS_Y=$((POS_Y - 1))
            ;;
        "s")
            POS_Y=$((POS_Y + 1))
            ;;
        "a")
            POS_X=$((POS_X - 1))
            ;;
        "d")
            POS_X=$((POS_X + 1))
            ;;
    esac
}