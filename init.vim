"Specifing the direcotry for plugins installation. -> ~/.config/nvim/plugged

set number

call plug#begin('~/.config/nvim/plugged')

"Plugins List 

Plug 'sainnhe/gruvbox-material'
Plug 'jcherven/jummidark.vim'
Plug 'preservim/nerdtree'
Plug 'frazrepo/vim-rainbow'
Plug 'altercation/vim-colors-solarized'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/taglist.vim'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'Shougo/neobundle.vim'
Plug 'aurieh/discord.nvim'
call plug#end()

"COLORSCHEME
"*****
"To enable the TermGuiColors. That is, entering in 256 colors mode.
if has('termguicolors')
	set termguicolors
endif
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme gruvbox-material
"*****

"Color brackets
let g:rainbow_active = 1

"let g:AutoPairsFlyMode = 1 

"This section is for Plugin NERDTree
"*****
"Start NerdTree. and if file is specified, then move the cursor to that
"window.
autocmd StdinReadPre * let s:std_in=1

autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"Close NERDTee if only NERDTee window is lft.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let NERDTreeQuitOnOpen = 1
"*****

set colorcolumn=80
filetype on

let g:discord_activate_on_enter = 0
let g:discord_reconnect_threshold = 5

autocmd VimEnter * DiscordUpdatePresence
