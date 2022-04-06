

syntax on
filetype plugin indent on
filetype on

set number
set nowrap
set hls

set bg=dark

set autoindent
set tabstop=8
set shiftwidth=8
set expandtab
set smarttab
set backspace=indent,eol,start
set nocursorline
set nofixendofline

if has('mouse')
    set mouse=a
endif

filetype plugin on
set omnifunc=syntaxcomplete#Complete
"set completeopt=longest
"set completeopt=menuone,longest,preview

"inoremap <C-Space> <C-x><C-o>
"inoremap <C-@> <C-Space>

" Highlight characters over 80 on one line.
autocmd BufRead,BufNewFile *.cc,*.h,*.py,*.cpp,*.sh,*.conf,*.help syntax match Error "\(^.\{80\}.*\)\@<=."
" Highlight trailing whitespaces.
autocmd BufRead,BufNewFile * syntax match Error "\s\+$"

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python,javascript,sql autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

highlight Pmenu ctermfg=black ctermbg=white
highlight PmenuSel ctermfg=white ctermbg=darkblue

hi Visual term=reverse cterm=reverse guibg=Grey

" Code folding plugin.
set foldmethod=indent
set foldlevel=99

set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

" Extended mouse handling in terminal.
"set ttym=urxvt

set timeoutlen=1000 ttimeoutlen=0

noremap j gj
noremap k gk


