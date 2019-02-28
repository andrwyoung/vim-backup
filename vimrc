syntax on
colorscheme dracula

set autowrite autoindent scroll=5 nowrap lazyredraw
set guifont=Monaco:h16 shell=/bin/bash mouse= 

" searching things
set path+=** wildmenu

" cursor line + turn off line highlights
set cursorline number
highlight CursorLine guibg=NONE


" highlight previous inserted things
nnoremap gV `[v`]

" relative motions
set number relativenumber
augroup numbering
	 autocmd! 
	 autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	 autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" folding
setlocal foldnestmax=1 foldmethod=syntax




" shortcuts
" remap leader to comma
let mapleader = ","

" highlight, but have c-l turn it off
set incsearch hlsearch 
nnoremap <silent> <C-L> :let @/=""<CR><C-L>

" shortcut for save and quit
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>

" shortcuts for creating and restoring sessions	
nnoremap <leader>s :mksession! ~/.vim/session<CR>:wa<CR>
nnoremap <leader>r :wa<CR>:source ~/.vim/session<CR>

" shortcut for commenting c code
let @c = 'I//j'

" easier macros
nnoremap Q @q

" disabling mouse controls
nnoremap <ScrollWheelUp> <nop>
nnoremap <ScrollWheelDown> <nop> 
nnoremap <ScrollWheelLeft> <nop> 
nnoremap <ScrollWheelRight> <nop> 
