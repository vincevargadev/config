" Oh, hello there!
" Use source % for updating the loaded configs.
" For more info, use the :help ABC, for example :help incsearch.
" In some cases, I also left a link to docs, or guides.

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

" Do not wrap lines.
" Only part of long lines will be displayed.
" When the curspr is moved to a part that is not shown,
" the screen will scroll horizontally.
set nowrap

" No swapfiles, no backups. Use undo files
" https://youtu.be/n9k9scbTuvQ?t=173
set noswapfile
set nobackup
set undodir=~/.undodir
set undofile

" While typing a search command, show where the pattern,
" as it was typed so far, matches.
set incsearch

" Set default line length marker at 80.
" Change column color as the default marker is hideous.
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Map the filetype to the command that starts the language server for the
" filetype.
" As recommended here in the config: https://github.com/natebosch/vim-lsc
let g:lsc_server_commands = {'dart': 'dart_language_server'}

let mapleader = ' '

" Plugins
call plug#begin('~/.vim/plugged ')
" Upon changes, reload the config and run :PlugInstall to install the plugins.
" To see all commands, go to:
" https://github.com/junegunn/vim-plug#commands
" The official Dart Vim plugin.

" Code completion plugin.
" coc: Conquer of Completion.
" Using the release branch as recommended by the plugin authors here:
" https://github.com/neoclide/coc.nvim#quick-start
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Provides filetype detection, syntax highlighting, indentation, autofmt, ...
" To see all commans, go to:
" https://github.com/dart-lang/dart-vim-plugin
Plug 'dart-lang/dart-vim-plugin'
" Adds langugae-aware tooling to vim by communicating with a language server.
" Added as recommended in the dart-vim-plugin.
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
" Insert and delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'

" Nerd Tree and Nerd Tree plugins
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Split window vertically
nnoremap <leader>wv <C-w>v<C-w>l
" Split window horizontally
nnoremap <leader>wh <C-w>s<C-w>j
" Close current window
nnoremap <Leader>wq <C-w>q

" coc.nvim configuration
" Configuration is required to make coc.nvim easier to work with, since it
" doesn't change key-mappings or Vim options to avoid conflict with other
" plugins.
runtime coc_conf.vim
" Enable HTML syntax highlighting inside Dart strings
let dart_html_in_string = v:true
" Enable Dart style guide syntax
let g:dart_style_guide = 2
" Enable DartFmt execution on buffer save

let g:dart_format_on_save = 1


" Show file tree
nnoremap <silent> <leader>pt :NERDTreeToggle<CR>
" Find file
nnoremap <leader>pF :NERDTreeFind<CR>

" Save
inoremap <C-s> <C-O>:update<cr>
nnoremap <C-s> :update<cr>

" Quit
inoremap <C-Q> <esc>:q<cr>
nnoremap <C-Q> :q<cr>
vnoremap <C-Q> <esc>:q<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>Q :qa!<cr>

" Split navigation shortcuts
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


