set-fish-config:
	fish -c 'curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher'
	cp ./* ~/.config/fish/ -r
	fish -c 'fisher update'
	git clone https://github.com/powerline/fonts.git
	cd fonts && ./install.sh
	rm -rf ./fonts
