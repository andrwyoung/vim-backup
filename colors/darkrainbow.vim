" darkrainbow - dark colorscheme for being nice
" AUTHOR: andrwyoung

let g:colors_name = 'darkrainbow'
set background=dark

" palette
let g:palette = {
	\ 'fg' : ["#eeeeee", 231],
	\ 'bg' : ["#303030", 236],
	\
	\ 'lite' : ["#4e4e4e", 239],
	\ 'mid' : ["#969696", 246],
	\ 'dark' : ["#d3d3d3", 252],
	\
	\ 'iden1' : ["#fdff8c", 229],
	\ 'iden2' : ["#e5a585", 215],
	\
	\ 'cont1' : ["#ff87af", 211],
	\
	\ 'vars1' : ["#a0ffdd", 158],
	\ 'vars2' : ["#afd7ff", 153],
	\
	\ 'str1' : ["#d7afff", 183],
	\ 'str2' : ["#ff9bb6", 218],
	\
	\ 'high1' : ["#ff5f87", 204],
	\ 'high2' : ["#fc327c", 161],
	\
	\ 'hmm' : ["#70ffc3", 106],
	\
	\ 'NONE' : ["NONE", "NONE"],
	\}

execute "source ~/.vim/plugins/colortemplate.vim"
