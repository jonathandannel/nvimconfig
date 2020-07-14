call plug#begin("~/.vim/plugins")
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'flazz/vim-colorschemes'
Plug 'jiangmiao/auto-pairs'
Plug 'sainnhe/sonokai'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'matveyt/vim-modest'
Plug 'ntk148v/vim-horizon'
Plug 'Alvarocz/vim-northpole'
Plug 'wolf-dog/nighted.vim'
Plug 'abnt713/vim-hashpunk'
Plug 'HenryNewcomer/vim-theme-papaya'
call plug#end()

""" Set some plugin specific globals 
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
let g:coc_disable_startup_warning = 1
command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:prettier#autoformat = 1
"""

""" colors
syntax enable
set termguicolors
set background=dark
colorscheme hashpunk
"""

""" Use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

""" nerdtree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
"""""""""""
" fuzzyfinder
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

"autocmd BufEnter * lcd %:p:h
"""""""""""
:set tabstop=2
:set shiftwidth=2
:set expandtab
:set ttyfast
:set modelines=0
:set laststatus=2
:set number
:set ignorecase
:set smartcase
:set wrap
