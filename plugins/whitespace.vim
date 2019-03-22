" AUTHOR: andrwyoung

function! RemoveEndSpace()
	let line = line('^')

	while(line <= lastline)
		line += a:direction

		" go to last character in line:
