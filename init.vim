source $HOME/.config/nvim/plug-config/coc.vim

syntax on

set guicursor
"Block cursor

set nohlsearch
"

let g:mapleader = ' ' "Definir , como tecla lide
"Espacio como mapleader
set splitbelow
set splitright

set relativenumber
set nu rnu
"Numeros bien
set title
"Titulo
set sw=4
"Tab de 4
set expandtab
"Tab = espacio
set nowrap
"No salto de linea auto
set noswapfile
set nobackup
"No backup ni errores al entrar a un archivo
set incsearch
set ignorecase
"Cosas para buscar

"Copiar y pegar dentro y fuera de vim
set encoding=UTF-8
set cursorline
set termguicolors
"Poner temas
set updatetime=100
"Signify
set clipboard+=unnamedplus

"set colorcolumn=80
"highlight ColoColumn ctermbg=0 guibg=lightgrey 
"Linea de la derecha

set nocp
if version >= 600
  filetype plugin indent on
endif

augroup VimStartup:
  au!
  au VimEnter * if expand("%") == "" | e. | endif
augroup END

set guifont="Caskaydia Cove Nerd Font Mono"

call plug#begin('~/.local/share/nvim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'chun-yang/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'yggdroot/indentline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-signify'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'

"Colors
"Plug 'morhetz/gruvbox'
"Plug 'ayu-theme/ayu-vim'
"Plug 'joshdick/onedark.vim'
"Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
"Plug 'ghifarit53/tokyonight-vim'
"Plug 'shinchu/lightline-gruvbox.vim'
"Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-w>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

call plug#end()
"Plugins

set background=dark
let ayucolor="mirage"
let g:gruvbox_cotrast_dark = "hard"
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:material_terminal_italics = 1
let g:material_theme_style = 'ocean'
"let g:gruvbox_transparent_bg=1
"configs para los temas

colorscheme material
let g:lightline = {}
let g:lightline.colorscheme = 'material'
"Seleccionar tema

"autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE
"transparent bg for gruvbox

"vnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>
nnoremap <c-t> :split<CR>:ter<CR>:resize 13<CR>

nnoremap <leader>s :w<CR> 
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>+ :e $MYVIMRC<CR> 
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>k :tabnext<CR>
nnoremap <leader>j :tabprevious<CR>
nnoremap <leader>d :bdelete<CR>
nnoremap <leader>t :tabe<CR>
nnoremap <leader>v :vsp<CR>
nnoremap <leader><s-n> :horizontal resize +5<CR>
nnoremap <leader><s-j> :vertical resize +5<CR>
nnoremap <leader>fs :Files<CR>
nnoremap <leader>; $a;<Esc>
nnoremap <leader>bf :Buffers<CR>
"Compile and run cpp
nnoremap <leader>c :!g++ %<CR>
nnoremap <leader>rr :!g++ %<CR>:ter ./a.out<CR>
"OpenGL linker
nnoremap <leader>ra :!g++ *.cpp -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl -lGLEW<CR>:!./a.out<CR>
"Side terminals
nnoremap <leader>r<right> :!g++ %<CR>:vsplit<CR>:ter ./a.out<CR>
nnoremap <leader>r<down> :!g++ %<CR>:split<CR>:ter ./a.out<CR>
nnoremap <F5> :UndotreeToggle<CR>

set noshowmode
