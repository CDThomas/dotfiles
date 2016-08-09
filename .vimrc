set nocompatible
filetype off

" For Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" End Vundle
call vundle#end()
filetype plugin indent on

runtime macros/matchit.vim

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" Recognize JSX in .js files
let g:jsx_ext_required = 0

" Add js and jsx files for tag matching plugin
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xml' : 1,
    \ 'javascript.jsx' : 1
    \}

" Recommended starting Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Configure Syntastic to use ESLint
let g:syntastic_javascript_checkers = ['eslint']

set relativenumber 
set number

syntax on
set background=dark
colorscheme solarized

set colorcolumn=80

" Keep at least 4 lines below the cursor
set scrolloff=4

" Convert tabs to spaces
set expandtab

" Two spaces per tab as default
set tabstop=2
set shiftwidth=2
set softtabstop=2

" No swapfiles
set nobackup
set nowritebackup
set noswapfile

" Set leader to space
let mapleader=" "

" Quick save and quit
noremap <Leader>s :w<CR>
noremap <Leader>q :q<CR>

" Emmet expansion with ctrl+e instead of default
map <C-e> <C-y>,
imap <C-e> <C-y>,

" NERDTree shortcut
map <C-n> :NERDTreeToggle<CR>
