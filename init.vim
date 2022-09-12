:set number
:set relativenumber
:set autoindent
:set mouse=a
let mapleader = " "

call plug#begin()
" Show current vim mode more neatly
Plug 'https://github.com/vim-airline/vim-airline'
" NerdTree Plugin
Plug 'https://github.com/preservim/nerdtree'
Plug 'OmniSharp/omnisharp-vim'
" Setup Code Formatter
Plug 'sbdchd/neoformat'
"  Task Runner Setup
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim' " make sure you have telescope installed
Plug 'EthanJWright/vs-tasks.nvim'
" AutoComplete
" Plug 'prabirshrestha/asyncomplete.vim'
" Error Highlight
Plug 'dense-analysis/ale'
" LSP Language Server
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Theme	
Plug 'jacoborus/tender.vim'
call plug#end()
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-x> :NERDTreeFocus<CR>
nnoremap <Leader>i :OmniSharpFixUsings
" Configure Cntrl + Space to shot auto complete on coc
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Setup Task runner
nnoremap <Leader>ta :lua require("telescope").extensions.vstask.tasks()<CR>
nnoremap <Leader>ti :lua require("telescope").extensions.vstask.inputs()<CR>
nnoremap <Leader>tt :lua require("telescope").extensions.vstask.close()<CR>

" Telescope Setup
nnoremap <Leader>ff <cmd>Telescope find_files<cr>

" Omnisharp config, since I wasn't be able to make coc plugin work
let g:OmniSharp_server_use_net6 = 1
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_highlight_types = 2
" Tell ALE to use OmniSharp for linting C# files, and no other linters.
let g:ale_linters = { 'cs': ['OmniSharp'] }

" if using ultisnips, set g:OmniSharp_want_snippet to 1
" let g:OmniSharp_want_snippet = 1

" Random ALE Stuff I found onlin:e
let g:ale_disable_lsp = 1
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
highlight clear ALEErrorSign
highlight clear ALEWarningSign
" Remove Arrow navegation
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

syntax enable
colorscheme tender
