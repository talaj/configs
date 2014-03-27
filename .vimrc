

" CTRL-Tab is Next window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

" CTRL-Shift-Tab is Previous window
noremap <S-C-Tab> <C-W>p
inoremap <S-C-Tab> <C-O><C-W>p
cnoremap <S-C-Tab> <C-C><C-W>p
onoremap <S-C-Tab> <C-C><C-W>p

" pathogen
let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'supertab')
call add(g:pathogen_disabled, 'minibufexpl')
call add(g:pathogen_disabled, 'ropevim')
call add(g:pathogen_disabled, 'vim-airline')
execute pathogen#infect()

syntax on
filetype plugin indent on
filetype on

set number
set nowrap
set hls

set bg=dark

set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set backspace=indent,eol,start
set nocursorline

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

" TaskList plugin.
map <leader>td <Plug>TaskList

" Gundo plugin.
map <leader>g :GundoToggle<CR>

" Pep8 plugin.
let g:pep8_map='<leader>8'

" SuperTab plugin.
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"

" NerdTree plugin.
map <leader>n :NERDTreeToggle<CR>

set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

" Extended mouse handling in terminal.
"set ttym=urxvt

