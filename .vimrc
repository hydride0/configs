filetype plugin on
filetype indent on
syntax enable
colorscheme wintersun
set encoding=utf8
set nobackup
set nowb
set noswapfile
set shiftwidth=2
set tabstop=2
set nu
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'scrooloose/syntastic'
Plugin 'vim-ruby/vim-ruby'
" To install plugins just open vim and run :VundleInstall.
" Plugins will be automatically installed in ~/.vim/bundle
