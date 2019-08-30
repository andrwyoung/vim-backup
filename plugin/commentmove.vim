		" commenter - some freedom with comments
" Author: andrwyoung

augroup commenttype
	autocmd!
	autocmd BufRead,BufNewFile *.vim,vimrc let b:commenttype = "\""
	autocmd BufRead,BufNewFile *.c,*.h,*.cpp let b:commenttype = "\\/\\/"
	autocmd BufRead,BufNewFile Makefile,*.py let b:commenttype = "#"
augroup END


" direction: -1 back, 1 forward
function! NextComment(direction)
	if (a:direction >= 0)
		execute "/^\\s*" . b:commenttype 
	else 
		execute "?^\\s*" . b:commenttype 
	endif
endfunction


function! ToggleComment()
	let comment = "^\\s*" . b:commenttype

	if matchstr(getline(line(".")), comment) == ''
		execute "s/^/" . b:commenttype
	else
		execute "s/" . b:commenttype
	endif
endfunction
