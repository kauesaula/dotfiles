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
