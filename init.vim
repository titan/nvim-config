" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2

set number
set relativenumber

set clipboard+=unnamedplus

let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python'

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)<Paste>

" Map ; to : and save a million keystrokes 用于快速进入命令行
nnoremap ; :

"dein Scripts-----------------------------

if &compatible
  set nocompatible
endif

set runtimepath+=/home/titan/.config/dein.vim/repos/github.com/Shougo/dein.vim

call dein#begin('/home/titan/.config/dein.vim')

call dein#add('Shougo/dein.vim')

call dein#add('Shougo/neocomplete.vim')

call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
call dein#add('junegunn/vim-easy-align')

call dein#add('Shougo/deoplete.nvim')
call dein#add('mhartington/deoplete-typescript')
call dein#add('leafgarland/typescript-vim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('scrooloose/nerdtree')
call dein#add('ntpeters/vim-better-whitespace')

call dein#add('def-lkb/ocp-indent-vim')

call dein#end()

filetype plugin indent on
syntax enable

map <F12> :NERDTreeMirror<CR>
map <F12> :NERDTreeToggle<CR>

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

au BufReadPost *
     \ if line("'\"") > 1 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

"" deoplete
set runtimepath+=/home/titan/.config/dein.vim/repos/github.com/Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#tss#javascript_support = 1
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.ocaml = '[^ ,;\t\[()\]]'

"" MERLIN

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')

execute "set rtp+=" . g:opamshare . "/merlin/vim"

"execute "helptags " . g:opamshare . '/merlin/vim/doc/'

execute "set rtp+=" . g:opamshare . "/ocp-indent/vim"
filetype indent on
filetype plugin indent on

set guifont=Terminess\ Powerline\ 13
let g:airline_powerline_fonts = 1
set encoding=utf8

let g:airline#extensions#tabline#enabled = 1

"execute "source" . g:opamshare . '/vim/syntax/ocp-indent.vim'
"autocmd FileType ocaml source g:opamshare . '/ocp-indent/vim/indent/ocaml.vim'
