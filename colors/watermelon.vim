let g:colors_name = 'watermelon'
set background=light

" palette
let g:palette = {
	\ 'fg' : ["#000000", 232],
	\ 'bg' : ["#ffffff", 231],
	\
	\ 'lite' : ["#e4e4e4", 254],
	\ 'mid' : ["#c6c6c6", 251],
	\ 'dark' : ["#4e4e4e", 239],
	\
	\ 'iden1' : ["#315bce", 69],
	\ 'iden2' : ["#ff548a", 205],
	\
	\ 'cont1' : ["#ff7575", 197],
	\
	\ 'vars1' : ["#56b3ff", 117],
	\ 'vars2' : ["#c768ff", 129],
	\
	\ 'str1' : ["#44e2b5", 42],
	\ 'str2' : ["#ffa149", 215],
	\
	\ 'high1' : ["#ff0000", 196],
	\ 'high2' : ["#6de9ff", 123],
	\
	\ 'hmm' : ["#70ffc3", 106],
	\
	\ 'NONE' : ["NONE", "NONE"],
	\}

execute "source ~/.vim/plugins/colortemplate.vim"
