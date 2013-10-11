## Organize some notes
# statics
BRAIN_EDITOR="vim"

# init
if [ ! -d "$ZSH/brain" ]; then
    mkdir $ZSH/brain
fi

function brain_print_use ()
{
    echo "Usage: brain [list|create|delete] NOTE"
}

function brain ()
{
    if [ "$2" = "" ]; then
        BRAIN_NOTE="$1"
        BRAIN_OPT=""
    elif [ "$1" = "" ]; then
        brain_print_use
    elif [ "$2" != "" ]; then
        BRAIN_NOTE="$2"
        BRAIN_OPT="$1"
    fi

    if [ "$1" = "list" ]; then
        printf "%15s%30s\n" "Last Changed" "Note"
        echo $(ls -l $ZSH/brain | egrep '^-') | while read i; do
            BRAIN_LAST_CHANGED=$(echo $i | cut -d' ' -f6-8)
            BRAIN_NOTE_NAME=$(echo $i | cut -d' ' -f9)
            printf "%15s%30s\n" "$BRAIN_LAST_CHANGED" "$BRAIN_NOTE_NAME"
        done
    elif [ "$1" = "create" ]; then
        echo "not yet implemented"
    elif [ "$1" = "delete" ]; then
        echo "not yet implemented"
    else
        if [ -f "$ZSH/brain/$1" ]; then
            $BRAIN_EDITOR $ZSH/brain/$1
        else
            echo "brain not found"
        fi
    fi
}
