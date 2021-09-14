" Bram Moolenaar <Bram@vim.org>
" Last change:	2015 Mar 24
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype indent plugin on


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plug 'VundleVim/Vundle.vim'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

Plug 'dense-analysis/ale'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
" Plug 'ycm-core/YouCompleteMe'
" Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'ervandew/supertab'
" Plug 'roxma/vim-hug-neovim-rpc'
" Plug 'roxma/nvim-yarp'
" Plug 'shougo/deoplete.nvim'
" Plug 'shougo/echodoc.vim'
" Plug 'deoplete-plugins/deoplete-jedi'
" Plug 'ElmCast/elm-vim'
" Plug 'lambdatoast/elm.vim'
" Plug 'andys8/vim-elm-syntax'
Plug 'sainnhe/everforest'
" Plug 'davidhalter/jedi-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
" Plug 'rust-lang/rust.vim'
" Plug 'OmniSharp/omnisharp-vim'
" Plug 'tpope/vim-abolish'
" Plug 'ludovicchabant/vim-gutentags'

let g:echodoc#enable_at_startup = 1
let g:echodoc#type="popup"

let g:airline_theme='jet'

call plug#end()

let g:airline#extensions#ale#enabled=1

let g:airline#extensions#ale#enabled = 1
" \    'rust': ['analyzer', 'rustc', 'cargo', 'rls'],
let g:ale_linters = {
\    'python': ['flake8','pylint','pydocstyle','mypy'],
\    'rust': ['clippy'],
\    'cs': ['mcsc'],
\}
" let g:ale_python_pylint_options='~/.pylintrc'
let g:ale_echo_msg_format='[%linter%] [%severity%] %code% %s'
let g:ale_python_flake8_options='--max-line-length=99 --ignore=E303,E201,E226,E202'
let g:ale_python_pydocstyle_options='--ignore=D202,D416,D212,D413,D203'
let g:ale_python_autopep8_options='--ignore=D202,E303,E201,E226,E202 --max-line-length=99'
let g:ale_python_mypy_options='--ignore-missing-imports'
let g:ale_fixers= {'python': ['yapf']}
let g:ale_python_yapf_options='--style facebook'
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:ale_fix_on_save=1
let g:ale_line_on_text_changed = 1
let g:ale_line_on_enter = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1
" call deoplete#initialize()


let g:jedi#show_call_signatures = "2"
let g:jedi#popup_on_dot = "0"

let g:airline_theme='jet'

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

" avoid annoying multi-line command window responses
set cmdheight=2

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

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

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

if has('langmap') && exists('+langnoremap')
  " Prevent that the langmap option applies to characters that result from a
  " mapping.  If unset (default), this may break plugins (but it's backward
  " compatible).
  set langnoremap
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

augroup myCmds
    au!
    autocmd VimEnter * silent !echo -ne "\e[1 q"
augroup end


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


autocmd BufWritePost *.md silent! !md-view <afile> &
" Automatically close location-list if it's the only buffer open
"
" Remap leador to space
let mapleader = " "

" get common term options mapped to leader
" Map leader t to open a terminal above the current buffer
nnoremap <leader>t :term<CR><C-W>20-
nnoremap <leader>p ! python %<CR>u<CR>
nnoremap <leader>pt :term python -m pytest % --pdb<CR>
nnoremap <leader>v ! md-view %<CR>u<CR>
set pastetoggle=<F8>
" Map leader p to open a terminal above the current buffer with python3
" running
" nnoremap <leader>p :term python3<CR><C-W>20-<CR>

nnoremap <leader>h gg0O<esc>:0r ~/.vim/templates/python-header.py<CR> 2j2li
nnoremap <F3> <esc>:call job_start('md-view %') <CR><CR>

set foldlevel=10

set wildmenu



colorscheme standard
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_listsyle=3
let g_netrw_list_hide=netrw_gitignore#Hide()
let g_netrw_list_hide.=',/(^\|\s\s\)\zs\.\S\+'
