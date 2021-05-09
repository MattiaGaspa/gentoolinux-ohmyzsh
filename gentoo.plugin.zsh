if (( $+commands[emerge] )); then
    alias install='sudo emerge '
    alias remove='sudo emerge -C '
    alias search='emerge -s '
    alias lbin='sudo emerge -K '
    alias rbin='sudo emerge -G '
    alias sync='sudo emerge --sync '
    alias upgrade='sudo emerge -aDuN world '
    alias clean='sudo emerge --depclean '
fi

if (( $+commands[genlop] )); then
    alias ghistroy='sudo genlop -l '
    alias eta='sudo genlop -c '
    alias weta='watch -ct -n 1 sudo genlop -c '
    alias ginfo='sudo genlop -i '
    alias guhistory='sudo genlop -u '
    alias estimate='sudo genlop -t '

if (( $+commands[qlop] )); then
    alias summary='sudo qlop -c '
    alias time='sudo qlop -t '
    alias average='sudo qlop -a '
    alias human='sudo qlop -H '
    alias machine='sudo genlop -M '
    alias qmhistory='sudo qlop -m '
    alias quhistory='sudo qlop -u '
    alias qahistory='sudo qlop -U '
    alias qshistory='sudo qlop -s '
    alias endtime='sudo qlop -e '
    alias running='sudo qlop -r '

if (( $+commands[eclean] )); then
    alias cleandist='sudo eclean --deep distfiles '
    alias cleanpkg='sudo eclean-pkg '
fi

if (( $+commands[euse] )); then
    alias nuse='sudo euse -E '
    alias duse='sudo euse -D '
fi

if (( $+commands[vim] )); then
    alias make='sudo vim /etc/portage/make.conf '
    alias mask='sudo vim /etc/portage/package.mask '
    alias use='sudo vim /etc/portage/package.use '
    alias repos='sudo vim /etc/portage/repos.conf '
fi
