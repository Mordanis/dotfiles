set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Plugins

call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'sainnhe/everforest'
Plug 'flazz/vim-colorschemes'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
call plug#end()

" Misc options

filetype plugin indent on
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  set backupdir=~/.cache/vim//,.
  set directory=~/.cache/vim//,.
  set undofile		" keep an undo file (undo changes after closing)
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
"
" Ignore case for lower case, but not upper case
set ignorecase
set smartcase

" keep cursor position more stable
set nostartofline

" ask if wanting to quit without saving changes
set confirm

" don't beep!
set visualbell
set t_vb=

" Don't use Ex mode, use Q for formatting
map Q gq
"
" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if !has('nvim')
    if has('mouse')
      set mouse=a
      set ttymouse=sgr
    endif
endif

" Use colors!
syntax on
set hlsearch
filetype plugin indent on
autocmd FileType text setlocal textwidth=78
set autoindent		" always set autoindenting on

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" use block cursor
set guicursor=a:block-Cursor
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[1 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[1 q\<Esc>\\"
else
    let &t_SI = "\e[1 q"
    let &t_EI = "\e[1 q"
endif

autocmd VimEnter * silent !echo -ne "\e[1 q"

" disable code folding
set nofoldenable

" set encoding to utf8
set encoding=utf-8
set fileencoding=utf-8

" set tab options
set shiftwidth=4
set softtabstop=4
set expandtab

"make Y act more like D
map Y y$

" double escape to redraw screen
nnoremap <esc><esc> :nohl<CR><C-L>

" use relative line numbers
set number relativenumber

" make buffer navigation easier
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Configure NerdTree
nnoremap <C-N> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Remap leador to space
let mapleader = " "

nnoremap <leader>t :term<CR><C-W>20-
nnoremap <leader>p ! python %<CR>u<CR>
nnoremap <leader>pt :term python -m pytest % --pdb<CR>
nnoremap <leader>v ! md-view %<CR>u<CR>
set pastetoggle=<F8>

nnoremap <leader>h gg0O<esc>:0r ~/.vim/templates/python-header.py<CR> 2j2li
nnoremap <F3> <esc>:call job_start('md-view %') <CR><CR>
nmap <silent> <leader>d <Plug>(coc-definition)

set wildmenu
colorscheme standard
let g:airline_theme='jet'

autocmd FileType python let b:coc_root_patterns = ['.git']