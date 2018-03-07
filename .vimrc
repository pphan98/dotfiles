" Pathogen settings
execute pathogen#infect()
syntax on
filetype plugin indent on

" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11
set guifont=monofur\ for\ Powerline:h14

" ***** All this is required to enable spacemacs-theme *****
" Color scheme
if (has("termguicolors"))
  set termguicolors
endif
set background=dark
" colorscheme spacemacs-theme
" colorscheme jellybeans
colorscheme seagrey-dark
" colorscheme simplifysimplify-dark
" let g:jellybeans_use_term_italics = 1

" Color scheme for vim airline
let g:airline_theme='deus'

" Show airline without having to split panes first
set laststatus=2

" Remove branch info from airline status
let g:airline#extensions#branch#enabled = 0
" Remove fileformat from airline status if format is 'utf-8[unix]'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

" Show line numbers
set number

" Do not line wrap
set nowrap

" Change leader key to comma
let mapleader = ","

" Enable indent guides on startup
let g:indent_guides_enable_on_vim_startup = 1

" ***** NERDTree configs *****

" Toggle NERDTree with leader key and 'n'
map <Leader>n :NERDTreeToggle<CR>

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

" Close vim if the only window let open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" ***** Backup and swap file configs *****

" Tell vim to keep a backup file
set backup

" Tell vim where to put its backup files
set backupdir=/private/tmp//

" Tell vim where to put swap files
" No longer have to put swp files in .gitignore files
set dir=/private/tmp//


" Uses soft tabs instead of hard tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" Ignore case when using all lowercase.
" Do case sensitive search when using uppercase.
" Examples
" /copyright      " Case insensitive
" /Copyright      " Case sensitive
" /copyright\C    " Case sensitive
" /Copyright\c    " Case insensitive
set ignorecase
set smartcase

" ***** ctrlp configs *****

let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files = 0

" Use ripgrep searching instead of ag or ack
if executable('rg')
  " When using ack.vim, use rg for searching instead
  let g:ackprg = 'rg --vimgrep --no-heading'

  " When using CtrlP, use rg for searching instead
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  " rg is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


" ***** ack.vim configs *****

" Ack will always display first result. Ack! will not. We want Ack!
" Map leader a to run Ack!
nnoremap <Leader>a :Ack!<Space>


" Add a space after the comment delimiters, just like Sublime Text
let g:NERDSpaceDelims = 1
" Align comment delimiters on the left, instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Add jsx syntax highlighting to js files also
let g:jsx_ext_required = 0

" Highlight search. Use :noh to remove highlight from last search
set hlsearch

" Disable folding when working in markdown files. Folding is on by default
" using this markdown syntax plugin
let g:vim_markdown_folding_disabled = 1

" Folding Settings
set foldmethod=indent  "fold based on indent
set foldnestmax=10     "deepest fold is 10 levels
set nofoldenable       "don't fold by default
set foldlevel=10       "initial fold level when activated??

" Fugitive - remapping 'git blame'
map <Leader>gb :Gblame<CR>
" Fugitive - remapping 'git diff'
map <Leader>gd :Gdiff<CR>

" Set ruby checker on syntastic to Rubocop
let g:syntastic_ruby_checkers = ['rubocop']
" Pass in arg to rubocop to use config yml in each project
let g:syntastic_ruby_rubocop_args = '-c .rubocop.yml'
