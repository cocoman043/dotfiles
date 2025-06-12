
if [ $# -gt 0 ]; then
    command yay "$@"
else
    command yay -Syu --needed - < ~/dotfiles/pkglist-gnome.txt 
fi

command yay -Qqe > ~/dotfiles/pkglist-gnome.txt
