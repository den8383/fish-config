set-fish-config:
	fish -c 'curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher'
	cp -r ./* ~/.config/fish/
	fish -c 'fisher update'
