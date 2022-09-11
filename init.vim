:set number
:set relativenumber
:set autoindent
:set mouse=a

call plug#begin()
" Show current vim mode more neatly
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'tomasiser/vim-code-dark'
" Plug 'OmniSharp/omnisharp-vim'
" Setup fzf command in neovim
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" AutoComplete
" Plug 'prabirshrestha/asyncomplete.vim'
" Error Highlight
" Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-x> :NERDTreeFocus<CR>
nnoremap <C-f> :Files<CR>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>"
" let g:OmniSharp_server_use_net6 = 1
" let g:OmniSharp_server_stdio = 1
" let g:OmniSharp_highlight_types = 2	
" if using ultisnips, set g:OmniSharp_want_snippet to 1
" let g:OmniSharp_want_snippet = 1

:colorscheme codedark
