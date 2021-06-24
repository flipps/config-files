nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

nnoremap <silent> <C-B> :NERDTreeToggle<CR>
nnoremap <Leader>> <C-w>15><CR>
nnoremap <Leader>< <C-w>15<<CR>

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Buffer navigation
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bN :bN<CR>

" CAPS word that cursor is on
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwUi<Esc>

" Control + s save
nnoremap <C-s> :w<CR>
