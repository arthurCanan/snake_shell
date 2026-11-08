#!/bin/bash

print_score () {
    tput cup 2 61 
    printf " SCORE: $SCORE"
}