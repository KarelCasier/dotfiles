# Add to path if it's not already there
pathmunge () {
        if ! echo "$PATH" | ag -Q "(^|:)$1($|:)" ; then
           if [ "$2" = "after" ] ; then
              export PATH="$PATH:$1"
           else
              export PATH="$1:$PATH"
           fi
        fi
}