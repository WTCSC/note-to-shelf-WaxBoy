#!/bin/bash

notes="./notes.txt"

add_n() {
    if ! [[ -f notes ]]; then
        echo "No notes file here!"
        exit 3
    else
        local note="$*"
        note >> notes
    fi

#search_n() {}

#create list function
list_n() {
    #if no notes or no notes file, give error, else list notes.
    if [[ -s $notes ]]; then
        echo "You have at least 1 line of notes:"
        cat $notes
        echo
    else
        echo "You poor soul. There are no notes here:" >&2
        exit 2
    fi
}

case "$1" in
    list)
        list_n
        ;;
    add)
        shift 
        add_n "$*"
        ;;
esac