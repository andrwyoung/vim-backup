" andrwyoung vimrc

" set and augroups {{{
" coloring and view
syntax on
colorscheme darkrainbow
set guifont=Monaco:h16
"set list

set nowrap lazyredraw
set autoindent
set whichwrap+=h

set shell=/bin/bash mouse=a
set showcmd
set shortmess+=I

set hidden
set autowrite


" file traversal
set path+=** wildmenu
set wildmode=longest:full,full
let g:netrw_banner = 0
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro' 

" folding
set foldnestmax=1 foldmethod=syntax
augroup folding
	autocmd!
	autocmd BufRead,BufNewFile *.vim,vimrc setlocal foldmethod=marker
augroup END

" numberings
set number 
augroup numbering
	autocmd! 
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" swapfiles
augroup swapfiles
	autocmd!
	autocmd Swapexists * let v:swapchoice = 'a'
augroup END
" }}}

" snippets and the like {{{
" easy fprintf
nnoremap \f ofprintf(stderr, "");<esc>F"i
" c code template
nnoremap \c :-1read $HOME/.vim/snippets/csnips.c<cr>zr5j

" macros
let @c = 'I//j'

" }}}

" all shortcuts {{{
" remap leader to comma
let mapleader = " "

" jank autopairs
nnoremap <leader>{ a{}<left><cr><tab><cr><bs><esc>k^a
nnoremap <leader>" a""<left>
nnoremap <leader>( a();<left><left>


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
" for visual mode too
vnoremap d "*d
vnoremap y "*y

" easier macros
nnoremap Q @q

nnoremap <cr> <nop>
nnoremap - <nop>
nnoremap + <nop>
" }}}

" plugin movements {{{
" indentmove.vim mappings
onoremap <leader>[ :call SameIndent(-1)<cr>
onoremap <leader>] :call SameIndent(1)<cr>
onoremap <leader>J :call NextIndent(1)<cr>
onoremap <leader>j :call NextIndent(1)<cr>
onoremap <leader>K :call NextIndent(-1)<cr>
onoremap <leader>k :call NextIndent(-1)<cr>

nnoremap <leader>[ :call SameIndent(-1)<cr>
nnoremap <leader>] :call SameIndent(1)<cr>
nnoremap <leader>J :call NextIndent(1)<cr>
nnoremap <leader>j :call NextIndent(1)<cr>
nnoremap <leader>K :call NextIndent(-1)<cr>
nnoremap <leader>k :call NextIndent(-1)<cr>

" fileswitching.vim mappings
nnoremap <leader>h :call SwitchSourceHeader()<cr>

" commentmove.vim mappings
nnoremap <leader>/ :call NextComment(1)<cr>
nnoremap <leader>? :call NextComment(-1)<cr>

" commenting in visual
vnoremap <leader>/ :call ToggleComment()<cr>
noremap <leader>c :call ToggleComment()<cr>
" }}}
