let g:colors_name = 'cottoncandy'

" palette
let s:fg	="#000000"
let s:bg	="#ffffff"

let s:select	="#d8d8d8"
let s:comment	="#c4c4c4"
let s:light	="#494949"
let s:symbols	="#ededed"

let s:green	="#44e2b5"
let s:indigo	="#70ffc3"
let s:cyan	="#6de9ff"
let s:dblue	="#315bce"
let s:blue	="#56b3ff"
let s:purple	="#9b47cc"
let s:red	="#ff7575"
let s:pink	="#ff548a"
let s:orange	="#ffa149"

" helper functions

" function to change color
" ...  arg1: bg color
function! ChangeHighlight(setting, fg, ...) 
	let cmd = "highlight! " . a:setting .
	 \ " guifg=" . a:fg . " guibg="
	if(a:0)
		let cmd .= a:1
	else
		let cmd .= s:bg
	endif
	execute cmd
endfunction

" user interface
call ChangeHighlight("ColorColumn", s:indigo)
call ChangeHighlight("CursorColumn", s:indigo)
call ChangeHighlight("Tabline", s:indigo)
call ChangeHighlight("TabLineSel", s:indigo)

call ChangeHighlight("CursorLineNr", s:light)
call ChangeHighlight("LineNr", s:comment)

call ChangeHighlight("VertSplit", s:bg, s:fg)
call ChangeHighlight("Visual", s:fg, s:select)

call ChangeHighlight("NonText", s:symbols)




"syntax
call ChangeHighlight("Normal", s:fg)
call ChangeHighlight("Comment", s:comment)
call ChangeHighlight("Underlined", s:orange)

call ChangeHighlight("Identifier", s:purple)
call ChangeHighlight("Function", s:pink)

call ChangeHighlight("Constant", s:purple)
call ChangeHighlight("String", s:green)
call ChangeHighlight("Character", s:orange)
call ChangeHighlight("Number", s:blue)
call ChangeHighlight("Boolean", s:blue)
call ChangeHighlight("Float", s:blue)

call ChangeHighlight("Statement", s:red)
call ChangeHighlight("Conditional", s:red)
call ChangeHighlight("Repeat", s:red)
call ChangeHighlight("Label", s:red)
call ChangeHighlight("Operator", s:red)
call ChangeHighlight("Keyword", s:red)
call ChangeHighlight("Exception", s:red)

call ChangeHighlight("Include", s:pink)
call ChangeHighlight("Define", s:pink)
call ChangeHighlight("Macro", s:pink)
call ChangeHighlight("PreCondit", s:pink)
call ChangeHighlight("StorageClass", s:pink)
call ChangeHighlight("Structure", s:pink)
call ChangeHighlight("Typedef", s:pink)

call ChangeHighlight("Type", s:dblue)

call ChangeHighlight("Delimiter", s:light)

call ChangeHighlight("Special", s:orange)
call ChangeHighlight("SpecialComment", s:orange)
call ChangeHighlight("SpecialKey", s:symbols)
call ChangeHighlight("Tag", s:orange)

