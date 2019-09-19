".vimrc of Thales at elis/sinmec
"the following was copied from the following sources:
	"https://stackoverflow.com/questions/6467634/create-a-command-shortcut-for-nerdtree-in-vim-editor

"Pathogen is a plugin manager 
execute pathogen#infect()
 call pathogen#helptags()

set nocompatible              " be iMproved, required
filetype plugin indent on

map <silent> <C-n> :NERDTreeToggle<CR> 
set number relativenumber nowrap
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

"TAB navigation
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
inoremap <C-h> <Esc>:tabprevious<CR>i
inoremap <C-l> <Esc>:tabnext<CR>i
inoremap <C-t> <Esc>:tabnew<CR>

" fix to strange register bug
unmap "


