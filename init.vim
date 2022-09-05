:set number
:set relativenumber
:set autoindent
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/glepnir/dashboard-nvim'
Plug 'tomasiser/vim-code-dark'
Plug 'OmniSharp/omnisharp-vim'

call plug#end()

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <F8> :TagbarToggle<CR>

let g:OmniSharp_server_stdio = 0

:colorscheme codedark
