call plug#begin()

Plug 'https://tpope.io/vim/fugitive.git'
Plug 'https://github.com/ycm-core/YouCompleteMe.git'

call plug#end()
set clipboard+=unnamedplus
set number
set rnu
set cursorline
colorscheme elflord

filetype plugin on
syntax on

set hlsearch

set tabstop=4
set noexpandtab
set shiftwidth=4

"" tab indent
set list lcs=tab:\|·
highlight SpecialKey ctermfg=8 guifg=DimGrey

"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall


"" left aligned in order
set statusline=
set stl+=%f


"" everything after this point is rigt aligned
set statusline+=%=
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}

