#!/bin/bash

notes="notes.txt"

add_n() {
        if [[ -n "$1" ]]; then
            local timestamp=$(date +"%Y-%m-%d, %H:%M:%S")
            echo "[$timestamp]  $*" >> $notes
        else
            echo "You must type a note."
            exit 1
        fi
}
#search_n() {}

#create list function
list_n() {
    #if no notes or no notes file, give error, else list notes.
    if [[ -s $notes ]]; then
    
        echo "You've got notes!"        #discludes the "Notes Deleted On:"" line
        if [[ "$(head -n 1 $notes | cut -c1)" != '[' ]]; then
            tail -n +2 $notes  
        else 
            cat $notes        
        fi
        echo

    else
        echo "You poor soul. There are no notes here:" >&2
        exit 2
    fi
}

search_n() {
    if [[ "$1" == 'searchcs' ]]; then
        shift
        search="$(grep "$*" "$notes")" #case sensitive search through notes
    else
        shift
        search="$(grep -i "$*" "$notes")" #case insensitive search
    fi
    
    if [[ -n $search ]]; then
        echo "$search"
    else
        echo "No matches!"
        exit 3
    fi
}
        #Go through 4 stages to confirm that you really want to delete your notes.
clear_n() {
    read -p "Are you sure you want to clear all of your notes? (Type 'Y' or 'N'): " answer
    if [[ "${answer,,}" == "y" ]]; then
        read -p "I don't believe you. (Type 'Yes' to confirm): " answer2

        if [[ "${answer2,,}" == "yes" ]]; then
            read -p "Im not convinced. Are you certain? (Type 'Affirmative'): " answer3

            if [[ "${answer3,,}" == "affirmative" ]]; then
                read -p "To make sure you understand, type 'I accept that my notes will be gone forever. I am willing to proceed.': " answer4
                
                if [[ "${answer4,,}" == "i accept that my notes will be gone forever. i am willing to proceed." ]]; then
                    echo "Notes deleted on: [$(date +"%Y-%m-%d,%H:%M:%S")]" > $notes

                else
                    echo "You are not worthy."
                    exit 4
                fi
            else
                echo "What's wrong?"
                exit 4
            fi
        else 
            echo "Okay"
            exit 4
        fi
    else
        echo "Good choice"
        exit 4
    fi
        

}
    #allow for commands: list, add, search, searchcs (case sensitive), & clear
case "$1" in
    list)
        list_n
        ;;
    add)
        shift       #shift to skip over "add"
        add_n "$*"
        ;;
    search|searchcs)    
        search_n "$@"   # use @ in order to pass in each argument including search/searchs, since it wasn't shifted
        ;;
    clear)
        clear_n  #clears entire notes after confirmation
        ;;
esac