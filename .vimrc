".vimrc of Thales at elis/sinmec
"the following was copied from the following sources:
	"https://stackoverflow.com/questions/6467634/create-a-command-shortcut-for-nerdtree-in-vim-editor

set nocompatible              " be iMproved, required
filetype off                  " required

map <silent> <C-n> :NERDTreeToggle<CR> 
set number relativenumber
filetype plugin on
syntax on

"Autocomplete brackets
noremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


"Pathogen is a plugin manager needed to use apt-vim
execute pathogen#infect()
call pathogen#helptags()

