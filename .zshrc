# -----------------------------------------------------
# MOTOR BASE (ZSH)
# -----------------------------------------------------
# Histórico de comandos (para a memória muscular funcionar)
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# -----------------------------------------------------
# PLUGINS & EXTENSÕES
# -----------------------------------------------------
# Sugestões baseadas no histórico (em tom de cinza)
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Zoxide (Substituto inteligente para o comando 'cd')
eval "$(zoxide init zsh)"

# Starship (O Prompt ultrarrápido em Rust)
eval "$(starship init zsh)"

# -----------------------------------------------------
# DASHBOARD DE INICIALIZAÇÃO
# -----------------------------------------------------
# Executa o Fastfetch apenas se o terminal for interativo
if [[ -t 1 ]]; then
  fastfetch
fi

# -----------------------------------------------------
# ALIASES DE INFRAESTRUTURA
# -----------------------------------------------------
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias cat="bat"
alias upg="sudo dnf upgrade"
alias upd="sudo dnf update"
alias ins="sudo dnf install"
alias shut="sudo shutdown now"
alias search="dnf search"
alias ls="eza -l --icons"
alias hypr="nvim ~/.config/hypr/hyprland.conf"
alias hypr-system="nvim ~/.config/hypr/hypr-system.conf"
alias hypr-visuals="nvim ~/.config/hypr/hypr-visuals.conf"
alias hypr-inputs="nvim ~/.config/hypr/hypr-inputs.conf"
