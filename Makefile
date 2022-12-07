set-fish-config:
	cp -r ./* ~/.config/fish/
install-fisher:
	fish -c 'curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher'
	fish -c 'fisher update'
