install_rcm: install_brew
	brew install rcm

install_brew:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


prerequisites: install_rcm

install:
	ln -s "$$(pwd)/dotfiles" "$(HOME)/.dotfiles"

sync:
	rcup -v