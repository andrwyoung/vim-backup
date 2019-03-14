let g:colors_name = 'cottoncandy'

" palette
let s:fg	=["#000000", 232]
let s:bg	=["#ffffff", 231]

let s:select	=["#d0d0d0", 252]
let s:comment	=["#c6c6c6", 251]
let s:subtle	=["#4e4e4e", 239]
let s:symbols	=["#e4e4e4", 254]

" identifiers: dark blue, pink
let s:iden1	=["#315bce", 69]
let s:iden2	=["#ff548a", 205]

" control: red
let s:cont1	=["#ff7575", 197]

" variables: blue purple
let s:vars1	=["#56b3ff", 117]
let s:vars2	=["#c768ff", 129]

" inside strings: green orange
let s:str1	=["#44e2b5", 42]
let s:str2	=["#ffa149", 215]

" highlighters: cyan
let s:high1	=["#6de9ff", 123]

" tester: indigo
let s:errs1	=["#70ffc3", 106]







" helper functions

" function to change color
" ...  arg1: bg color
function! ChangeHighlight(setting, fg, ...) 
	let l:fg = copy(a:fg)
	let l:bg = get(a:, 1, s:bg)

	let l:string = [
		\ "highlight!", a:setting,
		\ "guifg=" . l:fg[0], "ctermfg=" . l:fg[1],
		\ "guibg=" . l:bg[0], "ctermbg=" . l:bg[1],
		\]

	execute join(l:string, ' ')
endfunction

" user interface
call ChangeHighlight("ColorColumn", s:errs1)
call ChangeHighlight("CursorColumn", s:errs1)
call ChangeHighlight("Tabline", s:errs1)
call ChangeHighlight("TabLineSel", s:errs1)

call ChangeHighlight("Directory", s:vars1)
call ChangeHighlight("MatchParen", s:fg, s:high1)

call ChangeHighlight("Folded", s:subtle, s:symbols)
call ChangeHighlight("FoldColumn", s:fg)
call ChangeHighlight("CursorLineNr", s:subtle)
call ChangeHighlight("LineNr", s:comment)

call ChangeHighlight("VertSplit", s:bg, s:fg)
call ChangeHighlight("Visual", s:fg, s:select)

call ChangeHighlight("NonText", s:symbols)




"syntax
call ChangeHighlight("Normal", s:fg)
call ChangeHighlight("Comment", s:comment)
call ChangeHighlight("Underlined", s:str2)

call ChangeHighlight("Identifier", s:vars2)
call ChangeHighlight("Function", s:iden2)

call ChangeHighlight("Constant", s:vars2)
call ChangeHighlight("String", s:str1)
call ChangeHighlight("Character", s:str2)
call ChangeHighlight("Number", s:vars1)
call ChangeHighlight("Boolean", s:vars1)
call ChangeHighlight("Float", s:vars1)

call ChangeHighlight("Statement", s:cont1)
call ChangeHighlight("Conditional", s:cont1)
call ChangeHighlight("Repeat", s:cont1)
call ChangeHighlight("Label", s:cont1)
call ChangeHighlight("Operator", s:cont1)
call ChangeHighlight("Keyword", s:cont1)
call ChangeHighlight("Exception", s:cont1)

call ChangeHighlight("Include", s:iden2)
call ChangeHighlight("Define", s:iden2)
call ChangeHighlight("Macro", s:iden2)
call ChangeHighlight("PreCondit", s:iden2)
call ChangeHighlight("StorageClass", s:iden2)
call ChangeHighlight("Structure", s:iden2)
call ChangeHighlight("Typedef", s:iden2)

call ChangeHighlight("Type", s:iden1)

call ChangeHighlight("Delimiter", s:subtle)

call ChangeHighlight("Special", s:str2)
call ChangeHighlight("SpecialComment", s:str2)
call ChangeHighlight("SpecialKey", s:symbols)
call ChangeHighlight("Tag", s:str2)

