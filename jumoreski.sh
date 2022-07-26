function print_motd() {
    datafile=$1
    # Run only in an interactive shell
    if [ ! -z "$PS1" ]; then
        fortune $datafile | if [ "`date +"%A"`" = "Wednesday" ]; then
            cowsay -f small-frogs-wednesday -W 80
        else
            cowsay -W 80
        fi | lolcat
    fi
}

function print_jumoreski() {
    print_motd /usr/share/games/jumoreski
}
