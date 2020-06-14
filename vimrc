"Pathogen modules
execute pathogen#infect()

"Basic file type stuff
syntax on
filetype plugin indent on

" Disable Background color erase
if &term =~ '256color'
  " disable Background Color Erase (BCE)
  set t_ut=
endif

" Python
autocmd BufRead,BufNewFile *.py set expandtab
autocmd BufRead,BufNewFile *.py set tabstop=4
autocmd BufRead,BufNewFile *.py set shiftwidth=4

" YAML
autocmd BufRead,BufNewFile *.yml set expandtab
autocmd BufRead,BufNewFile *.yml set tabstop=2
autocmd BufRead,BufNewFile *.yml set shiftwidth=2

" JSON
autocmd BufRead,BufNewFile *.json set expandtab
autocmd BufRead,BufNewFile *.json set tabstop=2
autocmd BufRead,BufNewFile *.json set shiftwidth=2

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Go
autocmd BufRead,BufNewFile *.go let g:syntastic_always_populate_loc_list = 0
autocmd BufRead,BufNewFile *.go let g:syntastic_check_on_open = 0

" camel case motion
let g:camelcasemotion_key = '<leader>'

" Jedi
let g:jedi#popup_on_dot = 0

" doc string generation
let g:pydocstring_enable_mapping = 0
let g:pydocstring_templates_dir = '/home/ngreenall/.vim/templates/pydocstring/'
nnoremap <leader>dd :Pydocstring<CR>

" Theming
colorscheme slate
set nu!
set relativenumber!
let g:airline_theme='bubblegum'

" helper maps
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>
nnoremap <leader>] :TagbarToggle<cr>
nnoremap <leader>[ :NERDTreeToggle<cr>

" Location list maps
nnoremap <leader>lo :lope<cr>
nnoremap <leader>lc :lcl<cr>
nnoremap <leader>ll :ll<cr>
nnoremap ]l :lne<cr>
nnoremap [l :lpr<cr>
