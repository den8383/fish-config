set -U FZF_LEGACY_KEYBINDINGS 0
set fish_greeting

set PATH /usr/local/bin $PATH
set PATH /usr/sbin $PATH
set PATH ~/.local/bin $PATH
set PATH ~/flutter/bin $PATH
set PATH ~/Android/Sdk/emulator $PATH

alias ori-vim "/usr/bin/vim"
alias vim "nvim"
alias vi "nvim"

abbr -a adb /Android/Sdk/platform-tools
abbr -a ll ls -alF
abbr -a la ls -A
abbr -a l ls -CF
abbr -a .. cd ../
abbr -a ... cd ../../
abbr -a .... cd ../../../
abbr -a - cd -

set -g theme_color_scheme gruvbox

function run_tmux
    set sessions (tmux list-sessions)
    set new_session "Create New Session" 
    if test -z "$sessions"
      echo $new_session | peco --on-cancel=error
      exec tmux
    else if test -n "$sessions"
      set id (echo $new_session\n$sessions | peco --on-cancel=error | cut -d: -f1)
      if test $id = $new_session
        exec tmux 
      else if test -n $id
        exec tmux a -t $id
      end
    end
end
if test -z $TMUX
    run_tmux
end

starship init fish | source
