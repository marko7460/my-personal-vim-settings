filetype off
set number
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin on
filetype plugin indent on
set autoindent
" let g:pydiction_location = '/Users/marko/.vim/bundle/pydiction/complete-dict' 
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
" set dictionary=/usr/share/dict/words
" detect puppet filetype
au BufRead,BufNewFile *.pp              set filetype=puppet
" Uncomment the following to have Vim jump to the last position when                                                       
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" complete menu                                                            
hi Pmenu       ctermfg=black  ctermbg=yellow guifg=#66D9EF  guibg=#000000
hi PmenuSel    ctermfg=red  ctermbg=white                guibg=#808080
hi PmenuSbar                                               guibg=#080808
hi PmenuThumb                               guifg=#66D9EF

" Begginging of SimplyFold Setting
let g:SimpylFold_fold_import = 0
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
" End of SimpyFold Settings

"
" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let b:syntastic_mode="passive"


