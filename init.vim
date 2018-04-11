set number
set relativenumber
set t_Co=256
let g:solarized_termtrans=1
let g:solarized_termcolors=256

let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0

set title

set hlsearch
set incsearch

set scrolloff=5

let mapleader = ","

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'pangloss/vim-javascript'

Plug 'dag/vim-fish'

Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

let g:fzf_action = {
  \ 'ctrl-t': 'tab split' }

" Plug 'OmniSharp/omnisharp-vim'

Plug 'OrangeT/vim-csharp'

Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag'

Plug 'elmcast/elm-vim'

Plug 'fatih/vim-go'

Plug 'mattn/emmet-vim'

Plug 'tpope/vim-commentary'

Plug 'kshenoy/vim-signature'

Plug 'w0rp/ale'

Plug 'wakatime/vim-wakatime'

" Plug 'cjrh/vim-conda'

" Plug 'ctrlpvim/ctrlp.vim'

" if executable('ag')
" 	let g:ctrlp_user_command = 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'
" 	let g:ctrlp_use_caching = 0
" else
" 	let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
" 	let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
" endif

" let g:ctrlp_working_path_mode = 0
" let g:ctrlp_switch_buffer = 'e'

" ack.vim: ack integration
Plug 'mileszs/ack.vim'
let g:ackprg = 'ag -S --nogroup --column'

" Better statusbar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'flazz/vim-colorschemes'
let g:airline_powerline_fonts = 1
let g:airlinetheme = "solarized"

let g:airline#extensions#branch#displayed_head_limit = 17

set laststatus=2

Plug 'tpope/vim-fugitive'

" Git Gutter: shows a git diff in the gutter
Plug 'airblade/vim-gitgutter'
" without any weird color
highlight clear SignColumn

Plug 'elixir-lang/vim-elixir'

Plug 'ludovicchabant/vim-gutentags'
let g:gutentags_cache_dir = '~/.tags_cache'

" Plug 'neomake/neomake'
" autocmd! BufWritePost * Neomake

Plug 'c-brenn/phoenix.vim'
Plug 'tpope/vim-projectionist'

Plug 'slashmili/alchemist.vim'

Plug 'jeetsukumaran/vim-buffergator'


let g:alchemist_tag_disable = 1

call plug#end()

set bg=dark
" colorscheme solarized
colorscheme molokai_dark

set list
set listchars=tab:›\ ,trail:.

nnoremap <C-left> :tabprevious<cr>
nnoremap <C-right> :tabnext<cr>

map <C-p> :Files<CR>

hi MatchParen cterm=bold ctermbg=green ctermfg=black

autocmd BufNewFile,BufRead *.am set filetype=automake
autocmd BufNewFile,BufRead meson.build set filetype=meson
