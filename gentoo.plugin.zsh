if (( $+commands[emerge] )); then
    alias sync='sudo emerge --sync'
    alias upgrade='sudo emerge -aDuN world'
    alias clean='sudo emerge --depclean'
fi

if (( $+commands[eclean] )); then
    alias cleandist='sudo eclean --deep distfiles'
    alias cleanpkg='sudo eclean-pkg'
fi
