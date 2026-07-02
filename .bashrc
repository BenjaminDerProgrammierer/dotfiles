#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export ANDROID_HOME="$HOME/Android/Sdk"

alias nauts='nautilus . >/dev/null 2>&1 &'
alias pd='pandoc --from markdown --to html5 --standalone --embed-resources --mathjax --css=./pandoc.css -o "E.html"'
alias ll='ls -la'
alias fastfetch=hyfetch
alias passwordgen="openssl rand -base64 48 | tr -dc 'a-zA-Z0-9' | head -c 16"

# pnpm
export PNPM_HOME="/home/benjamin/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end
