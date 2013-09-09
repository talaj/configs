
set nocompatible

syntax enable
set number
set nowrap

set autoindent
" set cindent
set tabstop=4
set shiftwidth=4
set expandtab

if has('mouse')
  set mouse=a
endif

" Highlight characters over 80 on one line.
autocmd BufRead,BufNewFile *.cc,*.h,*.sql,*.py,*.cpp,*.sh,*.conf,*.help syntax match Error "\(^.\{80\}.*\)\@<=."
" Highlight trailing whitespaces.
autocmd BufRead,BufNewFile * syntax match Error "\s\+$"

