"""""""""""""""""""""""""""""""""""""""""""""""""
" Basic
"""""""""""""""""""""""""""""""""""""""""""""""""
syntax on       " syntax highlighting
set tabstop=4   " tab-key=4 spaces
set smartindent " auto indent
set encoding=utf-8
set textwidth=200
set columns=150


"""""""""""""""""""""""""""""""""""""""""""""""""
" Display
"""""""""""""""""""""""""""""""""""""""""""""""""
set number      " display row numbers
set title       " display file name
set showmatch   " display matching brackets
set showcmd     " display entering command
set shortmess+=I " don't show splash message
set wrap        " text wrap

" Display fullwidth space
augroup highlightIdegraphicSpace
  autocmd!
  autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=DarkGreen
  autocmd VimEnter,WinEnter * match IdeographicSpace /　/
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
"""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase  " case-insensitive
set smartcase   " if search word have uppercase, case-sensitive
set wrapscan    " wrap around


"""""""""""""""""""""""""""""""""""""""""""""""""
" Key map
"""""""""""""""""""""""""""""""""""""""""""""""""
set bioskey
set timeout
set timeoutlen=500

" move
nnoremap <Space>h <Home>
nnoremap <Space>l <End>
inoremap <Space>h <Home>
inoremap <Space>l <End>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" date/time
inoremap <Leader>date <C-R>=strftime('%Y/%m/%d (%a)')<CR>
inoremap <Leader>time <C-R>=strftime('%H:%M')<CR>
inoremap <Leader>w3cd <C-R>=strftime('%Y-%m-%dT%H:%M:%S+09:00')<CR>

" text-edit
inoremap <C-d> <Del>
noremap <CR> i<CR><ESC>

" brackets"
inoremap {} {}<LEFT>
inoremap [] []<LEFT>
inoremap () ()<LEFT>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
inoremap <> <><LEFT>
inoremap []5 [% %]<LEFT><LEFT><LEFT>

" search
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" window
nnoremap <silent> <C-x>1 :only<CR>
nnoremap <silent> <C-x>2 :sp<CR>
nnoremap <silent> <C-x>3 :vsp<CR>

" buffer
nnoremap <silent> bb :b#<CR>
nnoremap <silent> bp :bp<CR>
nnoremap <silent> bn :bn<CR>
nnoremap <silent> bd :bd<CR>
nnoremap ls :ls<CR>:b

" omni
"function InsertTabWrapper()
" if pumvisible()
" return "\<c-n>"
" endif
" let col = col('.') - 1
" if !col || getline('.')[col - 1] !~ '\k\|<\|/'
" return "\<tab>"
" elseif exists('&omnifunc') && &omnifunc == ''
" return "\<c-n>"
" else
" return "\<c-x>\<c-o>"
" endif
"endfunction
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
