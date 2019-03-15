" go to next line with different indent (no blank lines)
function! NextIndent(direction)
	let line = line('.')
	let lastline = line('$')
	let indent = indent(line) 

	" looping through each line in direction
	while(line > 0 && line <= lastline)
		let line += a:direction
		
		" check which indent line matches up
		if(indent(line) != indent && strlen(getline(line)) >0)
			" go to line
			execute "normal" . line . "G"
			return
		endif
	endwhile
endfunction

" go to next line with same indent
" then keep going for as long as possible
function! SameIndent(direction)
	let line = line('.')
	let lastline = line('$')
	let indent = indent(line) 

	" is next line different indent?
	let jumpmode = strlen(getline(line + a:direction)) == 0
		\ || indent(line + a:direction) != indent

	while(line > 0 && line <= lastline)
		let line += a:direction

		"if jumpmode. keep going until find a line with same indent
		if(jumpmode)
			if(indent(line) == indent
				\ && strlen(getline(line)) != 0)
				let jumpmode = 0
				execute line
				echo "found!"
			endif

		else
			if(indent(line) != indent 
				\ || indent == 0 && strlen(getline(line)) == 0)
				execute line - a:direction
				return
			endif
		endif
	endwhile
endfunction
