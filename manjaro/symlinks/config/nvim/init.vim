call plug#begin('~/.nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'

call plug#end()

syntax on
set mouse=a

" Spaces & Tabs
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
" set autoindent

" UI layout
set number
set showcmd
set wildmenu

" Folding
" set foldmethod=indent
" set foldenable

" Scroll
set scrolloff=12

" coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
