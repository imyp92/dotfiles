# Zsh 플러그인
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# 모던 CLI 도구 연동 (이 줄이 Starship을 켜는 핵심입니다!)
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)

# 단축키 모음
alias cd="z"
alias ls="eza --icons=always"
alias ll="eza -al --icons=always"
alias cat="bat"
alias vim="nvim"
alias vi="nvim"
