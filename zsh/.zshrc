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

# C++ 컴파일 (macOS: Apple clang은 모듈 미지원이라 Homebrew LLVM 사용 / Linux: GCC)
if [[ "$OSTYPE" == darwin* ]]; then
    alias cxx="/opt/homebrew/opt/llvm/bin/clang++ -std=c++20 -Wall -Wextra -fexperimental-library"
else
    alias cxx="g++ -std=c++20 -Wall -Wextra -fmodules"
fi

if [ -f ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi
