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
" Vim Table
Plugin 'dhruvasagar/vim-table-mode'
" Vim-Go Prerequisite 
" go get -u github.com/jstemmer/gotags
Plugin 'fatih/vim-go'
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

" Go Programming vim
filetype off
filetype plugin indent off
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

" GoImports
let g:gofmt_command = "goimports"

" Setting of vim-go
" Show word info
au FileType go nmap <Leader>i <Plug>(go-info)
" Open Godoc in browser
au FileType go nmap <Leader>gdb <Plug>(go-doc-browser)
" Run commands
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <F9> <Plug>(go-install)
au FileType go nmap <leader>v <Plug>(go-vet)
" Godef
au FileType go nmap gd <Plug>(go-def)
au FileType go nmap <Leader>gds <Plug>(go-def-split)
au FileType go nmap <Leader>gdv <Plug>(go-def-vertical)
au FileType go nmap <Leader>gdt <Plug>(go-def-tab)
" Godoc
au FileType go nmap <Leader>gd <Plug>(go-doc)

" Shortcut for MacOSX copy
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" Switch between last two buffers
nnoremap <leader>w <C-^>

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

" supertab based on context
let g:SuperTabDefaultCompletionType = "context"

" disable omnicompletion from opening scratch preview window on top
set completeopt-=preview
" enable normal omnicomplete
filetype plugin on

" go to the position I was when last editing the file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
endif
