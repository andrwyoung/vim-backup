syntax on
colorscheme slate
set autowrite autoindent number scroll=10 nowrap 
set guifont=Monaco:h16 shell=/bin/bash mouse= 
color dracula

	"get rid of highlight and previous search
nnoremap <silent> <C-L> :let @/=""<CR><C-L>
nnoremap <leader>w :wq<CR>

nnoremap <leader>q1 :mksession! ~/.vim/session/session1.vim<CR>:wqa<CR>
nnoremap <leader>q2 :mksession! ~/.vim/session/session2.vim<CR>:wqa<CR>
nnoremap <leader>q3 :mksession! ~/.vim/session/session3.vim<CR>:wqa<CR>

nnoremap <leader>1 :wa<CR>:source ~/.vim/session/session1.vim<CR>
nnoremap <leader>2 :wa<CR>:source ~/.vim/session/session2.vim<CR>
nnoremap <leader>3 :wa<CR>:source ~/.vim/session/session3.vim<CR>

function! RestoreSession()
  if argc() == 0 "vim called without arguments
    execute 'source ~/.vim/Session.vim'
  end
endfunction

let @c = 'I//j'
