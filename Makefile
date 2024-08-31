SHELL = /bin/zsh

install_rcm: install_brew
	brew install rcm

install_brew:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

install_fonts:
	cd "$$(mktemp)"; \
	  curl -L -O "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf"; \
	  curl -L -O "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf"; \
	  curl -L -O "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf"; \
	  curl -L -O "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf"; \
	  open -b com.apple.FontBook *.ttf

prerequisites: install_rcm

install:
	ln -s "$$(pwd)/dotfiles" "$(HOME)/.dotfiles"

sync:
	rcup -v