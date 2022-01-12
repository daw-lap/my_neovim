set encoding=UTF-8
set cindent
set cinoptions+=g0
set number
set showmatch
set ignorecase
set smartcase

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

let mapleader=','

set incsearch
set hlsearch

filetype plugin indent on

nnoremap <leader><space> :nohlsearch<CR>
nnoremap <C-space> :%s/\s\+$//e<CR>

syntax enable

autocmd BufNewFile,BufRead *.log setfiletype log
autocmd BufNewFile,BufRead *.LOG setfiletype log
autocmd BufNewFile,BufRead *.out setfiletype log

highlight ColorColumn ctermbg=red

nnoremap <space>l :set filetype=log<CR>
nnoremap <silent><Right> :bn<CR>
nnoremap <silent><Light> :bp<CR>

function! __vimrc_c_buffers()
    setlocal colorcolumn=120
endfunction

augroup VimrcBufferSettingsAutoCmd
    autocmd!
    autocmd Filetype cpp,c call __vimrc_c_buffers()
augroup END