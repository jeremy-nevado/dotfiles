mcd () {
    mkdir -p "$1"
    cd "$1"
}
sede () {
    sed -E "$1"
}

xmodmap ~/.Xmodmap
xcape -e 'Control_L=Escape'

anaconda () {
    source ~/anaconda3/bin/activate
}

# xmodmap -e 'Control_L = Escape'
# xmodmap -e 'keycode 66 = Control_L'
# xmodmap -e 'keycode 255 = Caps_Lock'
# xmodmap -e 'clear Lock'
