call plug#begin('~/.nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'folke/which-key.nvim'

Plug 'morhetz/gruvbox'

Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'eslint/eslint'

Plug 'preservim/nerdtree'
"Plug 'jistr/vim-nerdtree-tabs'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'preservim/nerdcommenter'

Plug 'thaerkh/vim-workspace'

Plug 'voldikss/vim-floaterm'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'bkad/camelcasemotion'
Plug 'phaazon/hop.nvim'

Plug 'airblade/vim-gitgutter'

Plug 'vim-airline/vim-airline'

call plug#end()

syntax on
set mouse=a

set noswapfile

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


" Tab navigation
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" " delete without yanking
" nnoremap <leader>d _d
" vnoremap <leader>d _d

" replace currently selected text with default register
" without yanking it
vnoremap p "_dP

noremap <leader>h :noh<cr>


set splitbelow

" terminal
tnoremap <C-\><Esc> <C-\><C-n>
nnoremap <C-\>t :T<cr>

command! -nargs=* T split | terminal <args>
command! -nargs=* VT vsplit | terminal <args>


" Plugins' settings
source ~/.config/nvim/plugins/airline.vim

source ~/.config/nvim/plugins/coc.vim

source ~/.config/nvim/plugins/fzf.vim

source ~/.config/nvim/plugins/gruvbox.vim

source ~/.config/nvim/plugins/motion.vim

source ~/.config/nvim/plugins/nerd-commenter.vim
source ~/.config/nvim/plugins/nerd-tree.vim

source ~/.config/nvim/plugins/polyglot.vim

source ~/.config/nvim/plugins/which-key.vim

source ~/.config/nvim/plugins/workspace.vim


