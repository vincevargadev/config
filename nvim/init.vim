
" Switch on syntax highlighting.
" https://neovim.io/doc/user/syntax.html
syntax on

" Insert space characters whenever the tab key is pressed.
" https://vim.fandom.com/wiki/Converting_tabs_to_spaces
set expandtab

" The number of space characters that will be inserted when the tab key is
" pressed.
" https://vim.fandom.com/wiki/Converting_tabs_to_spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Automatically insert one extra level of indentation when needed
" Alternatives: cindent
" https://vim.fandom.com/wiki/Indenting_source_code#.27smartindent.27_and_.27cindent.27
set smartindent

" Display line numbers
set number
" Display line numbers relative to the line with the cursor
set relativenumber
