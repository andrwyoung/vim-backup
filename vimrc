" coloring and view
syntax on
colorscheme dracula
set guifont=Monaco:h16
set nowrap lazyredraw

" movement behavior
set autoindent scroll=5 

" command line settings
set shell=/bin/bash mouse= 
set showcmd
" remap leader to comma
let mapleader = ","

" save settings
set autowrite

" highlight, but have c-l turn it off
set incsearch hlsearch 
nnoremap <silent> <C-L> :let @/=""<CR><C-L>

" searching directories + netwr
set path+=** wildmenu
" netrw
let g:netrw_banner = 0
	" turn on line numbering
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro' 
	" open netrw in a smaller window
let g:netrw_winsize = 20
	" open files in previous tab
let g:netrw_browse_split = 4
nnoremap <leader>f :Vex<CR>

" numberings
set number 
augroup numbering
	 autocmd! 
	 autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	 autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
highlight CursorLine guibg=NONE

" folding
set foldnestmax=1 foldmethod=syntax
" custom folding for vimrc file
augroup folding
	autocmd!
	autocmd BufRead vimrc setlocal foldmethod=expr
	autocmd BufRead vimrc setlocal foldexpr=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'\\S'?'<1':1
augroup END

" miscellaneous shortcuts
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
" highlight previous inserted things
nnoremap gV `[v`]
