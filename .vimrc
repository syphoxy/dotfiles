" Required for Vundle
set nocompatible
filetype off

" Set runtime path and initialize Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Source control
Plugin 'airblade/vim-gitgutter'

" Show trailing whitespace
Plugin 'bronson/vim-trailing-whitespace'

" Laravel/Blade
Plugin 'xsbeats/vim-blade.git'

" Rails
Plugin 'tpope/vim-rails.git'

" Scala
Plugin 'derekwyatt/vim-scala'

" Racket
Plugin 'wlangstroth/vim-racket'

" Syntax checking
Plugin 'scrooloose/syntastic'
Plugin 'chase/vim-ansible-yaml'
Plugin 'robbles/logstash.vim'
Plugin 'fatih/vim-go'
Plugin 'Glench/Vim-Jinja2-Syntax'

" Colors
Plugin 'nanotech/jellybeans.vim'

" Most Recently Used
Plugin 'yegappan/mru'

" All Plugins must be added before this
call vundle#end()

" jellybeans
let g:jellybeans_background_color_256='NONE'

syntax on
filetype plugin indent on

colorscheme jellybeans

" vim-gitgutter
highlight clear SignColumn

let g:gitgutter_sign_added = '+ '
let g:gitgutter_sign_modified = 'M '
let g:gitgutter_sign_removed = '- '
let g:gitgutter_sign_removed_first_line = '- '
let g:gitgutter_sign_modified_removed = 'M '
let g:gitgutter_sign_column_always = 1

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

set noswapfile
set nobackup
set number
set nostartofline
set nowrap
set hidden
set showcmd
set laststatus=2

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

noremap  <F1> :bp<CR>
noremap  <F2> :bn<CR>
inoremap <F1> <ESC>:bp<CR>i
inoremap <F2> <ESC>:bn<CR>i

vnoremap > >gv
vnoremap < <gv
