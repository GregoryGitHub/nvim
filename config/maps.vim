" Salvando arquivos em todos os modos com Ctrl + s
vnoremap <c-s> <Esc>:w<cr>
inoremap <c-s> <Esc>:w<cr>
nnoremap <c-s> <Esc>:w<cr>  

" nerdtree
nnoremap <space>e <Esc>:NERDTreeToggle<cr>
nnoremap <space>' <Esc>:FloatermToggle<cr>


"  Depende de um binário no sistema:  'sudo apt install jq'
nnoremap <space>fj <Esc>:%!jq .<cr>
inoremap <space>fj <Esc>:%!jq .<cr>

" Fechando o vim

nnoremap <leader>q <Esc>:q<cr>
nnoremap <leader>b <Esc>:buffers<cr>

