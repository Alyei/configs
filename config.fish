if status is-interactive
and not set -q TMUX
    exec tmux
end

alias ls="exa"
alias cat="batcat"
alias py="python3"
alias fd="fdfind"

set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
