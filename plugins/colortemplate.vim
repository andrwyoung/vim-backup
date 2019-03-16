" andrwyoung 2018
" this script is to help determine colors
" iden: identifiers like variable types and the like
" cont: control statments (if, for, else)
" vars: the number themselves (int, bool)
" str: strings and special characters
" high: highlighting for error and such
" hmm: color groups where I'm not quite too sure what they do
" NONE: do nothing



" helper functions
" function to change color
" ...  arg1: bg color
function! ChangeHighlight(setting, fg, ...) 
	let l:fg = copy(a:fg)
	let l:bg = get(a:, 1, g:palette.bg)
	let l:attrs = get(a:, 2, "NONE")

	execute "highlight" a:setting "NONE"

	let l:string = [
		\ "highlight!", a:setting,
		\ "guifg=" . l:fg[0], "ctermfg=" . l:fg[1],
		\ "guibg=" . l:bg[0], "ctermbg=" . l:bg[1],
		\ "gui=" . l:attrs, "cterm=" . l:attrs,
		\]

	execute join(l:string, ' ')
endfunction




" user interface
" all default text
call ChangeHighlight("Normal", g:palette.fg)
call ChangeHighlight("Cursor", g:palette.NONE, g:palette.lite)
call ChangeHighlight("Visual", g:palette.NONE, g:palette.lite)
call ChangeHighlight("VisualNOS", g:palette.NONE, g:palette.lite)

" status line
call ChangeHighlight("StatusLine", g:palette.fg, g:palette.mid)
call ChangeHighlight("StatusLineNC", g:palette.fg, g:palette.lite)
call ChangeHighlight("StatusLineTerm", g:palette.fg, g:palette.mid)
call ChangeHighlight("StatusLineTermNC", g:palette.fg, g:palette.lite)
call ChangeHighlight("WildMenu", g:palette.fg, g:palette.lite)
call ChangeHighlight("VertSplit", g:palette.fg, g:palette.bg)

" numbering
call ChangeHighlight("LineNr", g:palette.mid)
call ChangeHighlight("CursorLineNr", g:palette.dark)

" cursorline
call ChangeHighlight("CursorLine", g:palette.NONE, g:palette.lite)
call ChangeHighlight("CursorColumn", g:palette.NONE, g:palette.lite)

" folded things
call ChangeHighlight("FoldColumn", g:palette.fg)
call ChangeHighlight("Folded", g:palette.dark, g:palette.lite)

" messages
call ChangeHighlight("ModeMsg", g:palette.fg)
call ChangeHighlight("MoreMsg", g:palette.fg)
call ChangeHighlight("Question", g:palette.fg)
call ChangeHighlight("ErrorMsg", g:palette.bg, g:palette.high1)
call ChangeHighlight("WarningMsg", g:palette.fg, g:palette.high2)
call ChangeHighlight("Warning", g:palette.hmm, g:palette.fg)
call ChangeHighlight("Error", g:palette.hmm, g:palette.fg)

" popup menu
call ChangeHighlight("Pmenu", g:palette.dark, g:palette.lite)
call ChangeHighlight("PmenuSel", g:palette.bg, g:palette.dark)
call ChangeHighlight("PmenuSbar", g:palette.hmm)
call ChangeHighlight("PmenuThumb", g:palette.hmm)

" highlight searches
call ChangeHighlight("Search", g:palette.fg, g:palette.high2)
call ChangeHighlight("IncSearch", g:palette.fg, g:palette.high2)

" misc
call ChangeHighlight("Directory", g:palette.vars1)
call ChangeHighlight("MatchParen", g:palette.fg, g:palette.high2)

" no idea what this does
call ChangeHighlight("TabLine", g:palette.hmm)
call ChangeHighlight("TabLineFill", g:palette.hmm)
call ChangeHighlight("TabLineSel", g:palette.hmm)
call ChangeHighlight("ColorColumn", g:palette.hmm, g:palette.lite)




"syntax
call ChangeHighlight("Comment", g:palette.mid)
call ChangeHighlight("Conceal", g:palette.hmm)
call ChangeHighlight("Underlined", g:palette.hmm)
call ChangeHighlight("Todo", g:palette.fg, g:palette.high2)

" when set list is on
call ChangeHighlight("NonText", g:palette.lite)
call ChangeHighlight("SpecialKey", g:palette.lite)


call ChangeHighlight("Identifier", g:palette.vars2)
call ChangeHighlight("Function", g:palette.iden2)

" common syntax
call ChangeHighlight("Constant", g:palette.vars2)
call ChangeHighlight("String", g:palette.str1)
call ChangeHighlight("Character", g:palette.str2)
call ChangeHighlight("Number", g:palette.vars1)
call ChangeHighlight("Boolean", g:palette.vars1)
call ChangeHighlight("Float", g:palette.vars1)

call ChangeHighlight("Statement", g:palette.cont1)
call ChangeHighlight("Conditional", g:palette.cont1)
call ChangeHighlight("Repeat", g:palette.cont1)
call ChangeHighlight("Label", g:palette.cont1)
call ChangeHighlight("Operator", g:palette.cont1)
call ChangeHighlight("Keyword", g:palette.cont1)
call ChangeHighlight("Exception", g:palette.cont1)

call ChangeHighlight("PreProc", g:palette.iden2)
call ChangeHighlight("Include", g:palette.iden2)
call ChangeHighlight("Define", g:palette.iden2)
call ChangeHighlight("Macro", g:palette.iden2)
call ChangeHighlight("PreCondit", g:palette.iden2)
call ChangeHighlight("StorageClass", g:palette.iden2)
call ChangeHighlight("Structure", g:palette.iden2)
call ChangeHighlight("Typedef", g:palette.iden2)

call ChangeHighlight("Type", g:palette.iden1)

call ChangeHighlight("Delimiter", g:palette.dark)

call ChangeHighlight("Special", g:palette.str2)
call ChangeHighlight("SpecialComment", g:palette.str2)
call ChangeHighlight("Tag", g:palette.str2)

" help menu
call ChangeHighlight("helpHyperTextJump", g:palette.str2, g:palette.bg, 'underline')
call ChangeHighlight("helpCommand", g:palette.hmm)
call ChangeHighlight("helpExample", g:palette.str1)
call ChangeHighlight("helpBacktick", g:palette.str2)

