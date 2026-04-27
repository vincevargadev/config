alias hh=hx
# alias hhc=hx ~/.config
# alias hhz=hx ~/.zshrc

alias hhc=_open_config_with_helix
_open_config_with_helix() {
  hx ~/.config/ +':cd %:h'
}

alias colortest=_awk_color_test
_awk_color_test() {
  awk 'BEGIN{
    s="/\\/\\/\\/\\/\\"; s=s s s s s s s s;
    for (colnum = 0; colnum<77; colnum++) {
        r = 255-(colnum*255/76);
        g = (colnum*510/76);
        b = (colnum*255/76);
        if (g>255) g = 510-g;
        printf "\033[48;2;%d;%d;%dm", r,g,b;
        printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
        printf "%s\033[0m", substr(s,colnum+1,1);
    }
    printf "\n";
  }'
}