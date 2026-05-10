# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
alias config='/usr/bin/git --git-dir=/home/kaiito_/.dotfiles/ --work-tree=/home/kaiito_'
alias cat="bat"
alias upg="sudo dnf upgrade"
alias upd="sudo dnf update"
alias ins="sudo dnf install"
alias shut="sudo shutdown now"
alias search="sudo dnf search"
alias ls="eza -l --icons"
