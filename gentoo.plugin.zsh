if (( $+commands[emerge] )); then
    alias install='sudo emerge '
    alias remove='sudo emerge -C '
    alias search='emerge -s '
    alias lbin='sudo emerge -K '
    alias rbin='sudo emerge -G '
    alias sync='sudo emerge --sync'
    alias upgrade='sudo emerge -aDuN world'
    alias clean='sudo emerge --depclean'
fi

if (( $+commands[eclean] )); then
    alias cleandist='sudo eclean --deep distfiles'
    alias cleanpkg='sudo eclean-pkg'
fi

if (( $+commands[euse] )); then
    alias nuse='sudo euse -E '
    alias duse='sudo euse -D '
fi
