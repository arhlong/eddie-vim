" My currently working version Vimrc
" I kept all other settings in plugins/settings directory
"
" Eddie Kao
" http://blog.eddie.com.tw
" eddie@digik.com.tw

runtime bundle/vim-pathogen/autoload/pathogen.vim
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
call pathogen#infect()
call pathogen#helptags()

" hit enter to cancel searched highlight
"noremap <CR> :nohlsearch<CR>

" select ALL
map <C-A> ggVG

set nu
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

set runtimepath+=~/.vim/bundle/plugin/settings

"set for cscope quickfix
"set cscopequickfix=s-,c-,d-,i-,t-,e-

"set for OmniCppComplete
set nocp
"set runtimepath+=~/.vim/bundle/omnicppcomplete
set completeopt-=preview

"set for clang_complete
let g:clang_library_path='/usr/local/lib/libclang.so'

"create tags
"autocmd VimEnter * !ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
map <F3> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"create cscope file
"autocmd VimEnter * !cscope -Rbq -f scope.out
map <F5> :!cscope -Rbq -f scope.out<CR>
"autocmd VimEnter * cs add scope.out
map <F6> :cs add scope.out<CR>

"set some macros
"file decription
let @h="i//filename:author:description:"

" always auto save everythig
au InsertLeave * write
