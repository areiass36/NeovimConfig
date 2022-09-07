"Setup Caps as escape
" :autocmd BufWinEnter * !dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:swapescape']"
" :autocmd BufWinLeave * !dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:caps']"

:set number
:set relativenumber
:set autoindent
:set mouse=a

call plug#begin()
" Show current vim mode more neatly
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/glepnir/dashboard-nvim'
Plug 'tomasiser/vim-code-dark'
Plug 'OmniSharp/omnisharp-vim'
" Setup fzf command in neovim
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-x> :NERDTreeFocus<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <C-f> :Files<CR>

let g:OmniSharp_server_use_net6 = 1
let g:OmniSharp_server_stdio = 1

:colorscheme codedark
