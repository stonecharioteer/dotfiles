"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" basic settings
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber          " add relative line numbers
set complete=.,b,u,]
set wildmode=longest,list:longest   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
set splitbelow
set splitright
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" keymaps
let g:mapleader = ','       " map leader key to ,

" movement keymaps

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" map toggle spellcheck to ,s
nnoremap <leader>s :set invspell<CR>   " map toggle spellcheck to ,s

" reload config
nnoremap <leader>r :source ~/.config/nvim/init.vim<cr>

" use ,d to insert datetime in INSERT mode
inoremap <leader>d <C-R>=strftime("%Y-%m-%dT%H:%M")<CR>

" Use Tab for autocomplete with YouCompleteMe
imap <Tab> <C-P>

" Splits
nnoremap <leader>vs :vsplit<cr>
nnoremap <leader>hs :split<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the python3 version so that neovim can use it.
let g:python3_host_prog = '/home/stonecharioteer/code/tools/miniconda3/envs/nvim/bin/python3'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" add plugins
call plug#begin(stdpath('data') . ('/plugged'))

Plug 'junegunn/vim-easy-align'

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'Valloric/YouCompleteMe'

Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

Plug 'vim-syntastic/syntastic'

Plug 'rust-lang/rust.vim'

Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'christoomey/vim-tmux-navigator'

Plug 'vim-airline/vim-airline'

Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }


call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Specific items
nnoremap <leader>ne :NERDTreeToggle<cr>
" Close Nerd Tree after a file has been selected.
let NERDTreeQuitOnOpen=1
" Close Nerd Tree if it is the last file that's open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

