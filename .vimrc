" kj to esc
inoremap kj <Esc>

" tab to 4 spaces
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" copy from and to clipboard
vnoremap <C-c> "*y :let @+=@*<CR>
xnoremap p pgvy

" show line numbers
set number

" Smartcase search
set ignorecase
set smartcase

" H to start of line end L to end of line
nnoremap H ^
nnoremap L $

" keep cursor in middle (toggle)
set so=999
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>


" highlight search matches
set hlsearch


" don't skip _ in word movement (include underscore as word char)
set iskeyword+=_


" disable beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
