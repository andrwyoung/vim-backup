" coloring and view
syntax on
colorscheme dracula
set guifont=Monaco:h16

set nowrap lazyredraw
set incsearch hlsearch 
set foldnestmax=1 foldmethod=syntax
set autoindent

set shell=/bin/bash mouse= 
set showcmd
set shortmess+=I

set hidden
set autowrite

" file traversal
set path+=** wildmenu
let g:netrw_banner = 0
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro' 

" numberings
set number 
augroup numbering
	 autocmd! 
	 autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	 autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
highlight CursorLine guibg=NONE




" remap leader to comma
let mapleader = ","

" shortcut for save and quit
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>

" shortcuts for creating and restoring sessions	
nnoremap <leader>s :mksession! ~/.vim/session<CR>:wa<CR>
nnoremap <leader>r :wa<CR>:source ~/.vim/session<CR>

" macros
let @c = 'I//j'
nnoremap Q @

" make
nnoremap <leader>m :make<CR>

"clear highlights
nnoremap <silent> <C-L> :let @/=""<CR><C-L>
