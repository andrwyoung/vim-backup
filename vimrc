" coloring and view
syntax on
colorscheme dracula
set guifont=Monaco:h16
set list

set nowrap lazyredraw
" set incsearch hlsearch 
set foldnestmax=1 foldmethod=syntax
set autoindent
set whichwrap+=h

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

" don't create netrwhist
augroup netrwhist
	autocmd!
	autocmd VimLeave * call delete("~/.vim/.netrwhist") | bdelete!
augroup END



" snippets and the like
nnoremap \f afprintf(stderr, "");<esc>F"
nnoremap \c :-1read $HOME/.vim/snippets/csnips.c<cr>zr5j

" m_indentmove.vim mappings
onoremap <leader>[ :call SameIndent(0)<cr>
onoremap <leader>] :call SameIndent(1)<cr>
onoremap <leader>{ :call NextIndent(0, 1)<cr>
onoremap <leader>} :call NextIndent(1, 1)<cr>

nnoremap <leader>[ :call SameIndent(0)<cr>
nnoremap <leader>] :call SameIndent(1)<cr>
nnoremap <leader>h :call NextIndent(1, -1)<cr>^^
nnoremap <leader>H :call NextIndent(0, -1)<cr>^^
nnoremap <leader>l :call NextIndent(1, 1)<cr>^^
nnoremap <leader>L :call NextIndent(0, 1)<cr>^^





" macros
let @c = 'I//j'


let plugs = "~/.vim/plugins/"
" which things to load
exec "source" . plugs . "commentary.vim"
exec "source" . plugs . "surround.vim"
exec "source" . plugs . "repeat.vim"
" exec "source" . plugs . "auto-pairs.vim"

"mine
exec "source" . plugs . "m_indentmove.vim"



" remap leader to comma
let mapleader = " "

" shortcut for save and quit
nnoremap <leader>q :q<cr>
nnoremap <leader>s :w<cr>

" make
nnoremap <leader>m :make<cr>

" go to next/previous errors
nnoremap <leader>n :cn<cr>
nnoremap <leader>N :cp<cr>

" adding line above and below
nnoremap <leader>o myo<esc>`y
nnoremap <leader>O myO<esc>`y

" sourcing files 
nnoremap <leader>v :source $MYVIMRC<cr>
nnoremap \v :vs $MYVIMRC<cr>

" delete lines easier
inoremap <c-l> <c-u><c-u><c-u>

" recover c^u and c^w just in case
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" easier clipboard copy and pasting
nnoremap <leader>d "*d
nnoremap <leader>y "*y

nnoremap - <nop>
nnoremap + <nop>
