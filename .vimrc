".vimrc of Thales at elis/sinmec
"the following was copied from the following sources:
	"https://stackoverflow.com/questions/6467634/create-a-command-shortcut-for-nerdtree-in-vim-editor

"Pathogen is a plugin manager 
execute pathogen#infect()
call pathogen#helptags()
set nocompatible              " be iMproved, required
filetype plugin indent on

set number relativenumber nowrap list
filetype plugin on
syntax on

"Autocomplete brackets
 noremap " ""<left>
inoremap ' ''<left>
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

"NERDTree configuration
map <silent> <C-n> :NERDTreeToggle<CR> 
let NERDTreeIgnore = ['\.pyc$','\.vts$','\.dat$','\.dat.info$','\.o$']

" fix to a strange register bug
unmap "

" command for wipe the all the registers
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor])))

"map to clear highlight
nnoremap <Leader><space> :noh<cr>

"map <C-e> to jump to end of line on insert mode
inoremap <C-e> <C-o>$

"map <C-g> to jump to beginning of line on insert mode
inoremap <C-g> <C-o>0


" List contents of all registers (that typically contain pasteable text). 
" https://superuser.com/questions/656949/always-show-the-register-list-in-vim/662063
nnoremap <silent> "" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>

"Syntastic noob configuration:
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"let g:syntastic_python_python_exec = 'python'
"" let g:syntastic_python_checkers = ['python']
"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
"nnoremap <C-w>E :SyntasticToggleMode<CR> \| :SyntasticCheck<CR>
"
""Neomake
"autocmd! BufReadPost,BufWritePost * Neomake
"let g:neomake_serialize = 1
"let g:neomake_serialize_abort_on_error = 1

"Highlight current line and column
:hi CursorLine   cterm=NONE ctermbg=darkgray ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkgray ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorcolumn! <CR>
set cursorline

" Lightline config
set laststatus=2

" Shortcut to :w
noremap <Leader>s :update<CR>

" On pressing tab, insert 2 spaces
set noexpandtab
" show existing tab with 2 spaces width
" set tabstop=4
" set softtabstop=4
" " when indenting with '>', use 2 spaces width
" set shiftwidth=4
