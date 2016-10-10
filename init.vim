set expandtab
set shiftwidth=2
set softtabstop=2

set number
set relativenumber

set clipboard+=unnamedplus

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#tss#javascript_support = 1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

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
call dein#add('tpope/vim-sensible')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('scrooloose/nerdtree')
call dein#add('ntpeters/vim-better-whitespace')

call dein#end()

filetype plugin indent on
syntax enable

map <F12> :NERDTreeMirror<CR>
map <F12> :NERDTreeToggle<CR>

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
