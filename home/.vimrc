" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'nanotech/jellybeans.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'majutsushi/tagbar'
Bundle 'ervandew/supertab'

filetype plugin indent on     " required

color jellybeans

set cursorline
set clipboard=unnamed
set encoding=utf-8
set expandtab
set history=1000
set hlsearch
set ignorecase
set modelines=0
set mouse=a
set nowrap
set number
set nowritebackup
set noswapfile
set nobackup
set shiftwidth=2
set smartcase
set synmaxcol=128
set ttyscroll=10
set tabstop=2

" Automatic formatting
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" Go Programming vim
filetype off
filetype plugin indent off
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
autocmd FileType go nnoremap <F9> :!go install<CR>

" Shortcut for MacOSX copy
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" Switch between last two buffers
nnoremap <leader>b <C-^>

" Switch between buffers
noremap <F8> <c-w><c-w>

" NERDTree
nmap <F2> :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp']

" CtrlP
nnoremap <F4> t :CtrlP<cr>
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5

" Tagbar
nmap <F3> :TagbarToggle<CR>
" Because of old ctags conflict with ctags in brew
" Need to set direct path to new ctags
let g:tagbar_ctags_bin = '/usr/local/Cellar/ctags/5.8/bin/ctags'
" tagbar for golang
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
" Autotags for go
au BufWritePost *.go silent! !/usr/local/Cellar/ctags/5.8/bin/ctags -R &

" supertab based on context
let g:SuperTabDefaultCompletionType = "context"

" go to the position I was when last editing the file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
endif
