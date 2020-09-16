mcd () {
    mkdir -p "$1"
    cd "$1"
}
sede () {
    sed -E "$1"
}

xmodmap -e 'keycode 66 = Escape'
xmodmap -e 'clear Lock'
