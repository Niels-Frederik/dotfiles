call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/NERDTree'
Plug 'ryanoasis/vim-devicons'
call plug#end()

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set ignorecase              " case insensitive
set hlsearch                " highlight search
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number relativenumber
set wildmode=longest,list   " get bash-like tab completions
set splitbelow splitright
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard+=unnamedplus   " using system clipboard
filetype plugin on
set ttyfast                 " Speed up scrolling in Vim
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
"Delete trailing white spaces on save
autocmd BufWritePre * %s/\s\+$//e
"set guifont=Iosevka\ Nerd\ Font\ 11
set guifont=FuraCode\ Nerd\ Font\ 11

" NerdTree configs
noremap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeMapActivateNode = "l"

hi Pmenu ctermbg=black ctermfg=white
:set pumheight=5

"augroup colorscheme_coc_setup | au!
"    au ColorScheme * call s:my_colors_setup()
"augroup END

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

