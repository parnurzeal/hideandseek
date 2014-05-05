" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'nanotech/jellybeans.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
" Prerequisite needed --> github.com/dgryski/vim-godef
Plugin 'dgryski/vim-godef'
" Go Autocomplete
Plugin 'nsf/gocode', {'rtp': 'vim/'}

call vundle#end()             " required
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
nnoremap <F4> :CtrlP<cr>
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

" disable omnicompletion from opening scratch preview window on top
set completeopt-=preview

" go to the position I was when last editing the file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
endif
