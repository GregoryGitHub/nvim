call plug#begin()


Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'img-paste-devs/img-paste.vim'
Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Configurações do editor
set number
set relativenumber
set smarttab



" Configurações dos plugins 
colorscheme nordic
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='bubblegum',


" MAPEAMENTOS 

" Salvando arquivos em todos os modos com Ctrl + s
vnoremap <c-s> <Esc>:w<cr>
inoremap <c-s> <Esc>:w<cr>
nnoremap <c-s> <Esc>:w<cr>  
