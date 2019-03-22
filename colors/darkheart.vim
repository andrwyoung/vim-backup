let g:colors_name = 'fattermelon'
set background=light

" palette
let g:palette = {
	\ 'fg' : ["#eeeeee", 231],
	\ 'bg' : ["#303030", 236],
	\
	\ 'lite' : ["#4e4e4e", 239],
	\ 'mid' : ["#969696", 243],
	\ 'dark' : ["#d3d3d3", 250],
	\
	\ 'iden1' : ["#f486d7", 69],
	\ 'iden2' : ["#e5a585", 205],
	\
	\ 'cont1' : ["#ff87af", 197],
	\
	\ 'vars1' : ["#71d1e2", 117],
	\ 'vars2' : ["#afd7ff", 129],
	\
	\ 'str1' : ["#d7afff", 42],
	\ 'str2' : ["#4bb77d", 215],
	\
	\ 'high1' : ["#ff5f87", 204],
	\ 'high2' : ["#d75f87", 168],
	\
	\ 'hmm' : ["#70ffc3", 106],
	\
	\ 'NONE' : ["NONE", "NONE"],
	\}

execute "source ~/.vim/plugins/colortemplate.vim"
