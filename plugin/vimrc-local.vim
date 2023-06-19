" This variable can be used to disable file tree traversal
let g:vim_local_traverse_filetree = get(g:, 'vim_local_traverse_filetree', 1)

" Locate local vimrc up the file tree, if not disaabled
if g:vim_local_traverse_filetree
    let s:local_vimrc = fnamemodify(findfile('.vimrc-local', '.;'), ':p')
else
    let s:local_vimrc = '.vimrc-local'
endif

" If it exists, source it
if filereadable(s:local_vimrc)
    execute 'source '.s:local_vimrc
endif
