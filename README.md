Pathogen
========
1. Install https://github.com/tpope/vim-pathogen

Plugins
=======
1. jedi-vim
  1. Install: cd ~/.vim/bundle; git clone https://github.com/davidhalter/jedi-vim.git
  2. after that do pip install jedi
2. syntastic
  1. Install: cd ~/.vim/bundle; git clone https://github.com/scrooloose/syntastic.git
  2. Add this in ~/.vimrc 
```
" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
```
3. SimplyFold
  1. Install: cd ~/.vim/bundle; git clone  https://github.com/scrooloose/syntastic.git
  2. Add this in ~/.vimrc
```
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
```
  3. To unfold use command: zo
  4. To fold use command: zc
3. tabular
  1. Install: cd ~/.vim/bundle; git clone git://github.com/godlygeek/tabular.git
  2. http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
