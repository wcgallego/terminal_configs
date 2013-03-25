" tabspacing
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

set number
syntax on
set hlsearch
set ruler

" shift + tab to un-indent
imap <S-Tab> <C-o><<

" statusline
set statusline=%F%m%r%h%w\ %y\ [lines=%L]\ [x=%04v][y=%04l][%p%%]
set laststatus=2

"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*

"display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

"remove trailing whitespace on save
autocmd BufWritePre *.php :%s/\s\+$//e

set nocompatible " get out of horrible vi-compatible mode

set showmatch " show matching brackets
set mat=5 " how many tenths of a second to blink matching brackets for

"man pages for PHP, use \"K\" (capital K) to show
"make sure to install via pear with:
"pear install doc.php.net/pman
"pman strpos on cli also works
set keywordprg=pman
