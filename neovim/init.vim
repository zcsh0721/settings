" 安装配置插件 :PlugInstall

let mapleader=" "
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase


# 键位修改
noremap j h
noremap i k
noremap k j
noremap I 5k
noremap K 5j

noremap h i
noremap H I
noremap n nzz
noremap N Nzz
noremap <LEADER><CR> :nohlsearch<CR>
noremap <LEADER>w :vsplit<CR>

map S :w<CR>
map s <nop>
map Q :q<CR>
map R :source $MYVIMRC<CR>

" 解决 insert 模式下无法删除字符的配置
set nocompatible
set backspace=indent,eol,start
call plug#begin('~/.vim/plugged')

" 添加状态栏
Plug 'vim-airline/vim-airline'
" 主题插件
Plug 'connorholyday/vim-snazzy'

call plug#end()

" 配置 snazzy 主题, 并设置主题透明
color snazzy
let g:SnazzyTransparent = 1