set -gx EDITOR nvim

set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_CONFIG_HOME $HOME/.config

set -x GPG_TTY (tty)

alias cat="bat"
alias grep="rg"
alias ll="eza -l -g --icons --git"
alias llt="eza -1 --icons --tree --git-ignore"
alias td="tmux detach"
alias dev="tmux new -s dev"
alias deva="tmux attach-session -t dev"
alias neofetch="neofetch --ascii --source ~/.config/neofetch/ascii.txt"

fish_add_path $HOME/.foundry/bin
fish_add_path $HOME/.bun/bin
fish_add_path $HOME/.local/bin
fish_add_path /usr/local/go
fish_add_path $HOME/.foundry/bin
fish_add_path $HOME/.zvm/bin
fish_add_path $HOME/.zvm/self

eval (starship init fish)
pokemon-colorscripts -s -n lugia --no-title

echo -e y | fish_config theme save "Catppuccin Mocha"
