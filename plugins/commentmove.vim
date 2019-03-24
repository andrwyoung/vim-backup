" comment move - move to next / previous commments
" Author: andrwyoung

augroup commenttype
	autocmd!
	autocmd BufRead,BufNewFile *.vim,vimrc let b:commenttype = "\""
	autocmd BufRead,BufNewFile *.c,*.h,*.cpp let b:commenttype = "\\/\\/"
augroup END


" direction: -1 back, 1 forward
function! NextComment(direction)
	if (a:direction >= 0)
		execute "/^\\s*" . b:commenttype 
	else 
		execute "?^\\s*" . b:commenttype 
	endif
endfunction
