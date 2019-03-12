function! SameIndent(direction)
	let line = line('.')
	let column = col('.')
	let lastline = line('$')
	let stepvalue = a:direction ? 1 : -1
	let indent = indent(line) 
	" is next one start of a chasm?
	let done = 0
	let jump = strlen(getline(line + stepvalue)) == 0
		\ || indent(line + stepvalue) > indent
	let marker = line('.')

	while(line > 0 && line <= lastline)
		let nextline = line + stepvalue

		if(jump && strlen(getline(nextline)) == 0 
			\ || indent(nextline) > indent))
			let done = 1
		
		else
			if(indent(nextline) < indent)
