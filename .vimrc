syntax on
set rtp+=~/.vim/bundle/Vundle.vim
set nocompatible              " be iMproved, required
filetype off    
" Vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-pathogen'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'valloric/youcompleteme'
Plugin 'dkprice/vim-easygrep'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'rdnetto/YCM-Generator'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'fcpg/vim-farout'
Plugin 'idbrii/vim-sandydune'
Plugin 'jacoborus/tender.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'udalov/kotlin-vim'
Plugin 'dart-lang/dart-vim-plugin'
call vundle#end()            " required
set shell=/bin/zsh "Shell
set hlsearch "wit
filetype plugin indent on "wit
""""""" Color Scheme Stuff"""""""""
"TENDER"
if(has("termguicolors"))
	set termguicolors
endif
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax enable
colorscheme tender
let macvim_skip_colorscheme=1
"ENDTENDER"
"VIM-JAVACOMPLETE2
autocmd FileType java setlocal omnifunc=javacomplete#Complete
"ENDVIM-JAVACOMPLETE2
set number " Show line numbers
set mouse=a " Enable mouse
set tabstop=4 " wit
set shiftwidth=4 " wit
" Neovim
let g:python3_host_prog="/usr/local/bin/python3.6"
let g:python2_host_prog="/usr/local/bin/python"
" Pathogen
"set rtp+=~/.vim/autoload/pathogen.vim
execute pathogen#infect()
call pathogen#helptags()

"set guifont=Roboto\ Mono\ Medium\ for\ Powerline:h15
set guifont=Inconsolata-dz\ for\ Powerline:h15
set splitright
" Nerdtree
let g:NERDTreeMouseMode=3
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeWinPos = "left"
let g:NERDTreeChDirMode = 2
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" CtrlP
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1
" Conque
let g:ConqueGdb_GdbExe='gdb'
" YCM
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
 " air-line
 let g:airline_powerline_fonts = 1
 let g:molokai_original = 1
 let g:rehash256 = 1
 if !exists('g:airline_symbols')
     let g:airline_symbols = {}
 endif
" Airline theme
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16'

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
"map inputs
map<F2> "+y 
map<Ctrl-å> <Ctrl-]>
map <F3> :source ~/.vimrc<CR>
nnoremap tn :vsp<bar>bn<CR>
nnoremap th :bprevious<CR>
nnoremap tl :bnext<CR>
nnoremap gt :YcmCompleter GoTo<CR> 
nnoremap tt :NERDTree<CR>
nnoremap åå :CtrlPBufTag<CR>
nnoremap <A-h> <C-W>20<
nnoremap <A-j> <C-W>5-
nnoremap <A-k> <C-W>5+
nnoremap <A-l> <C-W>20>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <S-j> ]m
nnoremap <S-k> [m
nnoremap <S-CR> i<CR><ESC>
nnoremap ä :
nnoremap cu :CtrlPFunky<CR>
nnoremap cU :execute 'CtrlPFunky ' . expand('<cword>')<CR> 
nnoremap co :copen<CR>:<ESC>
nnoremap cc :cclose<CR>:<ESC>
noremap € $
nnoremap <C-a> i<CR><Esc>
nnoremap<silent><Leader>v :NERDTreeFind<CR>
nnoremap<Leader>f :NERDTreeToggle<Enter>
nnoremap<silent><Leader>v :NERDTreeFind<CR>
nnoremap<Leader>f :NERDTreeToggle<Enter>
inoremap § <ESC>
vnoremap § <ESC>
nnoremap § <ESC>
nnoremap ö <ESC>
inoremap ö <ESC>
vnoremap ö <ESC>
vnoremap p "_dP
nnoremap p p

if exists(':tnoremap')
     tnoremap öö <C-\><C-N>
endif

"Custom Commands
command! Q bp<bar>sp<bar>bn<bar>bd<cr>
command! Gt YcmCompleter GoTo<CR>
command! ToX %!xxd
command! -nargs=* Gp :grep -F <q-args> **/*.c 
command! Json %!python -m json.tool
