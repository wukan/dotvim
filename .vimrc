"start pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on
set encoding=utf-8
set guifont=Consolas:h14
set shiftwidth=2
set sts=2
set tabstop=2
set expandtab
set nu
set hlsearch
set ignorecase
set smartcase
set ruler
set background=dark
syntax on

"to make sure the ctags working correctly
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"

colorscheme solarized

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"fuzzy finder
let mapleader = "\\"
map <leader>f :FufCoverageFile<CR>

"Trailing extra whitespace
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
runtime! macros/matchit.vim

"Highlight the chars more than 80
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
