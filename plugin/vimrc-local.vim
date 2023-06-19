" Locate local vimrc up the file tree
let s:local_vimrc = fnamemodify(findfile('.vimrc-local', '.;'), ':p')

" If it exists, source it
if filereadable(s:local_vimrc)
	execute 'source '.s:local_vimrc 
endif
