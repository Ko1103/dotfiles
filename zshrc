alias ll="ls -la"
alias ..="cd .."
alias ...="cd ../.."
alias s="git status"
alias myip="curl http://ipecho.net/plain; echo"
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '
alias c="clear"
alias vim="nvim"

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
  $HOME/bin
)

eval "$(starship init zsh)"
export STARSHIP_CONFIG=$PWD/.config/starship.toml

function rm_terraform {
    find . \( -iname ".terraform*" ! -iname ".terraform-docs*" \) -print0 | xargs -0 rm -r
}

function rm_merged_branch {
	git branch --merged|egrep -v '\*|develop|master|main'|xargs git branch -d
}

. "$HOME/.cargo/env"

# for asdf
export N_PREFIX=$HOME
export PREFIX=$HOME

# see https://asdf-vm.com/guide/getting-started.html#_3-install-asdf wanring for mac
ASDF_FORCE_PREPEND=yes . "/opt/homebrew/opt/asdf/libexec/asdf.sh"

eval "$(fnm env --use-on-cd --shell zsh)"

