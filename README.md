# vim-local

This plugin makes it possible to use a local vimrc. The plugin checks for the 
file .vimrc.local, and if it exists sources it.

That means you can do all sorts of fun stuff on a per-project-basis, such as: 
color schemes, indentation levels, fonts etc.

## Configuration

There's only one configuration option:

* g:vim_local_traverse_filetree

If you don't want the plugin to keep searching up the file tree and stick to
only the current working directory, you can do so by putting the following in 
your vimrc:

    let g:vim_local_traverse_filetree = 0

By default g:vim_local_traverse_filetree is set to 1, which leads to the
following behavior:

```
/some/path/code/.vimrc-local
/some/path/code/python/project1 -> will load /some/path/code/.vimrc-local
/some/path/code/python/project2 -> will load /some/path/code/.vimrc-local
/some/path/code/work/.vimrc-local
/some/path/code/work/project1 -> will load /some/path/code/work/.vimrc-local
/some/path/code/work/project2 -> will load /some/path/code/work/.vimrc-local
/some/path/code/work/project3/.vimrc-local
/some/path/code/work/project3 -> will load /some/path/code/work/project3/.vimrc-local
```

This makes it pretty easy to share vim settings for multiple related projects,
but has the potential of becomming rather complex. Use as you see fit!

## Credits

I found the idea here: http://www.vimninjas.com/2012/08/30/local-vimrc/ (written 
by Veselin Todorov)

I wanted it in a bundle, so I made one :)

