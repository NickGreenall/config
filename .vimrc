execute pathogen#infect()

syntax on
filetype plugin indent on

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Jedi
let g:jedi#popup_on_dot = 0

" Theming
colorscheme slate
set nu!
let g:airline_theme='bubblegum'

" helper maps
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>
