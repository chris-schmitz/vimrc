syntax on
filetype plugin on

set t_Co=256  " make use of 256 terminal colors 
"set background=dark
"colorscheme solarized
"colorscheme mayansmoke
"colorscheme pyte
"colorscheme desert
"colorscheme corporation
"colorscheme blackdust
"colorscheme zellner

set encoding=utf-8
" Prevents the hiding of double quotes in json formatted files.
set conceallevel=0

hi clear SpellBad
hi SpellBad cterm=underline,bold ctermfg=white ctermbg=red

set relativenumber
set number

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set nowrap
set hlsearch
set backspace=indent,eol,start "Allow backspace to work like most other apps, e.g. deleting a line ending will take you to the previous line

set backupdir=~/vim_backups
set swapfile
set dir=~/vim_swaps
set showmode
set mouse=nicr
set laststatus=2

call pathogen#infect()



" Setting character to use for showing indents in indentLine bundle
let g:indentLine_char = '|'
let g:indentLine_color_term = 236


" NerdTree specific configs
let NERDTreeShowHidden=1


" Setting the path so we can use the :find command
set path=$PWD/**

" Function Key Mappings ===============================================

"F2

" Toggle spell check
:map <F2> :setlocal spell! spelllang=en_us<CR>

" Toggle spell check in insert mode
":imap <F2> <Esc>:setlocal spell! spelllang=en_us<CR>i
inoremap <F2> <C-\><C-O>:setlocal spelllang=en_us spell! spell?<CR>

"F3

" Underline the current line with dashes in normal mode
nnoremap <F3> yyp<c-v>$r-

" Underline the current line with dashes in insert mode
inoremap <F3> <Esc>yyp<c-v>$r-A

"F4

" Double Underline the current line with dashes in normal mode
nnoremap <F4> yyp<c-v>$r=

" Double Underline the current line with dashes in insert mode
inoremap <F4> <Esc>yyp<c-v>$r=A

" Control Key Mappings ===============================================

" CTRL-h

" ctrl+c to toggle highlight.
let hlstate=0
nnoremap <c-h> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>

" CTRL-n

" Toggle NerdTree 
map <C-n> :NERDTreeToggle<CR>

" CTRL-l

" Toggle NerdTree 
map <C-l> :! clear ; php -l %<CR>

" Smooth the scrolling for ctrl-e, ctrl-y, and mouse wheel
map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>                                                                                          |
map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>

" Moving entire lines up and down
map <C-UP> ddkP
map <C-DOWN> ddp

inoremap <C-UP> <ESC>ddkPi
inoremap <C-DOWN> <ESC>ddpi


" NeoComplete Cache
" https://github.com/Shougo/neocomplcache.vim
"let g:neocomplcache_enable_at_startup = 1

" Insert empty lines without going into insert mode
" Enter = line below, Shift Enter = line above
nmap <S-Return> O<Esc>
nmap <CR> o<Esc>

"Start tabular command
vmap <S-t> :Tab /

"Control P buffer only
noremap <C-b> :CtrlPBuffer<CR>

" Highlight all instances of pattern on double click:
:map <2-LeftMouse> *


"Enable powerline symbols for airline
let g:airline_powerline_fonts = 1

" suppress syntax errors for html when working with ember. 
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html'] }
