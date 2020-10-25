tmux
if test -f /home/kali/.autojump/share/autojump/autojump.fish; . /home/kali/.autojump/share/autojump/autojump.fish; end

alias ls="exa"
alias cat="bat"
alias py="python3"

set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"