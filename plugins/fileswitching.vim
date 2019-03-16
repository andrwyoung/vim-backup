" switch between source file and header
function! SwitchSourceHeader()
	let extension = expand("%:e")
	let name = expand("%:t:r")

	if ((extension == "cpp" || extension == "c")
		\ && filereadable(name . ".h"))
		find %:t:r.h

	elseif (expand ("%:e") == "h")
		if (filereadable(name . ".c"))
			find %:t:r.c
		elseif (filereadable(name . ".cpp"))
			find %:t:r.cpp
		endif

	else
		echo "alternate file not found"
	endif
endfunction

