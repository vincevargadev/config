alias oldvim=vim
alias vim=nvim
alias v=nvim

# TODO: Make sure NERDTree also opens when this command is executed
alias vc=_open_config_folder
_open_config_folder() {
  nvim ~/.config/ +':cd %:h'
}

alias vz=_open_zshrc
_open_zshrc() {
  nvim ~/.zshrc +':cd %:h'
}
