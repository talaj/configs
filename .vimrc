
set nocompatible

" pathogen
let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'supertab')
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

if has('mouse')
    set mouse=a
endif

filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=menuone,longest
"set completeopt=menuone,longest,preview

" Highlight characters over 80 on one line.
autocmd BufRead,BufNewFile *.cc,*.h,*.sql,*.py,*.cpp,*.sh,*.conf,*.help syntax match Error "\(^.\{80\}.*\)\@<=."
" Highlight trailing whitespaces.
autocmd BufRead,BufNewFile * syntax match Error "\s\+$"

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

highlight Pmenu ctermfg=black ctermbg=white
highlight PmenuSel ctermfg=white ctermbg=darkblue

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

