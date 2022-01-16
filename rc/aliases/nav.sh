# https://linux.101hacks.com/cd-command/cd-alias/
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias cdc="cd ~/.config"

# mcd to make a directory and change to that newly created directly in one command
mcd() {
  mkdir -p -- "$1" && cd -P -- "$1"
}
export mcd

