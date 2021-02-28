"              _                           
"             (_)                          
"     __   __  _   _ __ ___    _ __    ___ 
"     \ \ / / | | | '_ ` _ \  | '__|  / __|
"  _   \ V /  | | | | | | | | | |    | (__ 
" (_)   \_/   |_| |_| |_| |_| |_|     \___|
"                                          
" Config by Robert / Blueberry                                          


" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" The Plugins
call plug#begin()
		
" Better Vim bar
Plug 'itchyny/lightline.vim'

" Colorscheme (used for Lightline)
Plug 'dracula/vim',{'as':'dracula'}

" Better commenting system
Plug 'tpope/vim-commentary'

" Some nice Vim settings
Plug 'tpope/vim-sensible'

" Git Wrapper for Vim
Plug 'itchyny/vim-gitbranch'

call plug#end()

" Sets the colorscheme to Dracula
colorscheme dracula

" Vim settings
set laststatus=2
set noshowmode
set number

" Lightline Config
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
