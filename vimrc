syntax on
colorscheme dracula

set autowrite autoindent scroll=5 nowrap
set guifont=Monaco:h16 shell=/bin/bash mouse= 

" searching things
set path+=** wildmenu

" cursor line + turn off line highlights
set cursorline lazyredraw
highlight CursorLine guibg=NONE

" highlight, but have c-l turn it off
set incsearch hlsearch 
nnoremap <silent> <C-L> :let @/=""<CR><C-L>

" shortcut for save and quit
nnoremap <leader>q :wq<CR>

" shortcuts for creating and restoring sessions	
nnoremap <leader>s :mksession! ~/.vim/Session.vim<CR>:wqa<CR>
nnoremap <leader>r :wa<CR>:source ~/.vim/Session.vim<CR>
function! RestoreSession()
  if argc() == 0 "vim called without arguments
    execute 'source ~/.vim/Session.vim'
  end
endfunction

" shortcut for commenting c code
let @c = 'I//j'

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
setlocal foldmethod=expr
setlocal foldexpr=CFold(v:lnum)
" the rules for folding c code
function! CFold(lnum)
	if getline(a:lnum) =~ '\v^\s*$'
		return '-1'
	endif
	
	return '0'
endfunction

" swapping + and = to make it easy to move around
nnoremap + =
nnoremap = +
