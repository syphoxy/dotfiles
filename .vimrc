set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'airblade/vim-gitgutter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'chase/vim-ansible-yaml'
Plugin 'derekwyatt/vim-scala'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'fatih/vim-go'
Plugin 'gmarik/Vundle.vim'
Plugin 'hashivim/vim-terraform'
Plugin 'itchyny/lightline.vim'
Plugin 'jremmen/vim-ripgrep'
Plugin 'nanotech/jellybeans.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-rails.git'
Plugin 'vim-scripts/groovyindent-unix'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'wlangstroth/vim-racket'
Plugin 'xsbeats/vim-blade.git'

" Plugin 'ap/vim-buftabline'
" Plugin 'derekwyatt/vim-scala'
" Plugin 'robbles/logstash.vim'
" Plugin 'scrooloose/syntastic'
" Plugin 'tpope/vim-rails.git'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'wlangstroth/vim-racket'
" Plugin 'xsbeats/vim-blade.git'

call vundle#end()

"" End of Vundle configuration

let g:jellybeans_background_color_256='NONE'

let g:gitgutter_sign_added = '+ '
let g:gitgutter_sign_modified = 'M '
let g:gitgutter_sign_modified_removed = 'M '
let g:gitgutter_sign_removed = '- '
let g:gitgutter_sign_removed_first_line = '- '

if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif

let g:terraform_align=1
let g:terraform_fmt_on_save=1

let g:go_fmt_command = "goimports"
let g:go_highlight_build_constraints = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_types = 1

let g:rustfmt_autosave = 1

colorscheme jellybeans

syntax on
filetype plugin indent on

highlight clear SignColumn
highlight VertSplit ctermbg=NONE guibg=NONE

set autoindent
set backspace=indent,eol,start
set expandtab
set fillchars+=vert:│
set hidden
set hlsearch
set laststatus=2
set nobackup
set nostartofline
set noswapfile
set nowrap
set number
set scrolloff=10
set shiftwidth=2
set showcmd
set tabstop=2

autocmd BufNewFile,BufReadPost Fastfile     set filetype=ruby
autocmd BufNewFile,BufReadPost Jenkinsfile* set filetype=groovy

noremap  <F1> :bp<CR>
noremap  <F2> :bn<CR>
inoremap <F1> <ESC>:bp<CR>i
inoremap <F2> <ESC>:bn<CR>i

vnoremap > >gv
vnoremap < <gv
