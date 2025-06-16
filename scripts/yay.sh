sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && sudo cp ../pacman.conf /etc/pacman.conf
