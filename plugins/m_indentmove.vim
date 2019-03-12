" direction: 1 forward 0 back
" level: how many indent levels forward
function! NextIndent(direction, level)
	let line = line('.')
	let column = col('.')
	let lastline = line('$')
	let indent = indent(line) 
	let stepvalue = a:direction ? 1 : -1

	"looping through each line in direction
	while(line > 0 && line <= lastline)
		let line += stepvalue

		" check which indent line matches up
		if (indent(line) == indent + a:level * 8
			\ && strlen(getline(line)) > 0)
			" go to new line
			execute line
			" go to original column (indents are offset)
			execute "normal" . (indent / 8 + column) . "|"
			return
		endif
	endwhile
endfunction

" direction: 1 forward 0 back
" chasm is defined as any contiguous lines that have
	" more indents or is blank line
function! SameIndent(direction)
	let line = line('.')
	let column = col('.')
	let lastline = line('$')
	let stepvalue = a:direction ? 1 : -1
	let indent = indent(line) 
	" is next one start of a chasm?
	let done = 0
	let jumpmode = strlen(getline(line + stepvalue)) == 0
		\ || indent(line + stepvalue) > indent

	while(line > 0 && line <= lastline)
		let line += stepvalue

		" jumping over chasm: move to next block with same line
		if(jumpmode)
			if(indent(line) < indent && 
				\ strlen(getline(line)) != 0)
				echo "returning!"
				return
			endif
			if(indent(line) == indent)
				execute line
				execute "normal" . (indent / 8 + column) . "|"
				return
			endif

		" not jumping over a chasm: go to end of paragraph
		else
			if(indent(line) != indent)
				execute line - stepvalue
				execute "normal" . (indent / 8 + column) . "|"
				return
			endif
		endif
	endwhile
endfunction
