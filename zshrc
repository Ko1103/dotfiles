alias ll="ls -la"
alias ..="cd .."
alias ...="cd ../.."
alias s="git status"
alias myip="curl http://ipecho.net/plain; echo"
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '

typeset -U path PATH
path=(
  /opt/homebrew/bin(N-/)
  /opt/homebrew/sbin(N-/)
  /usr/bin
  /usr/sbin
  /bin
  /sbin
  /usr/local/bin(N-/)
  /usr/local/sbin(N-/)
  /Library/Apple/usr/bin
)

source ~/.git-prompt.sh

# プロンプトのオプション表示設定
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

setopt PROMPT_SUBST ; PS1='%c$(__git_ps1 " (%s)")\$ '

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit