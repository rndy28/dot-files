nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusUseNerdFonts = 1

let g:airline_powerline_fonts = 1
let g:airline_theme='deus'


call plug#begin('~/.vim/plugged')
Plug 'dylanaraps/wal.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
call plug#end()
