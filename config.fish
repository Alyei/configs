tmux
if test -f /home/kali/.autojump/share/autojump/autojump.fish; . /home/kali/.autojump/share/autojump/autojump.fish; end

alias ls="exa"
alias cat="batcat"
alias py="python3"
alias fd="fdfind"

set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"