"help key-notation"help key-notation""""""""""""""""""""""""""""""""
"   Usability
""""""""""""""""""""""""""""""""""
set mouse=a
set smarttab
set tabstop=4
set shiftwidth=4
" use spaces instead of tabs
set expandtab

""""""""""""""""""""""""""""""""""
" Keybinds
""""""""""""""""""""""""""""""""""
nnoremap <silent> <C-k> :Commentary<CR>
nnoremap <silent> <C-v> :vsp<CR>
nnoremap <silent> <C-h> :sp<CR>
nnoremap <silent> <C-j> :tab ter<CR>

" NerdTree Keybinding
nnoremap <silent> <C-n> :NERDTree<CR>
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :NERDTreeFind<CR>
"""""""""""""""""""""""""""""""
"   Interface
""""""""""""""""""""""""""""""""""


" Line number settings
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave    * set relativenumber
    autocmd BufEnter,FocusLost,InsertEnter      * set norelativenumber
augroup end


" Make comments italic
highlight comment cterm=italic gui=italic


""""""""""""""""""""""""""""""""""
"   Plugins
""""""""""""""""""""""""""""""""""


call plug#begin()
    Plug 'arcticicestudio/nord-vim' 
    Plug 'Yggdroot/indentLine' " line indentation visualization
    Plug 'scrooloose/nerdtree' " side directory viewer
    Plug 'sheerun/vim-polyglot' " syntax hightlighting
    Plug 'dense-analysis/ale'
    Plug 'bling/vim-airline' " bottom status bar
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'https://github.com/tpope/vim-commentary'
    Plug 'pangloss/vim-javascript'
    Plug 'mxw/vim-jsx'
    Plug 'jelera/vim-javascript-syntax'
    Plug 'tpope/vim-fugitive'
    Plug 'jiangmiao/auto-pairs'
call plug#end()

" --------- bling/vim-airline settings -------------
" always show statusbar
set laststatus=2
" show paste if in paste mode
let g:airline_detect_paste=1
" use powerline font extras (arrows)
let g:airline_powerline_fonts=1
" show airline for tabs
let g:airline#extension#tabline#enabled=1
""""""""""""""""""""""""""""""""""""""""""""""""""""
" --------- indentLine settings -------------------
let g:indentLine_showFirstLevelIndent=1
let g:indentLine_setColors=0
"""""""""""""""""""""""""""""""""""""""""""""""""""
"---------------- Color Scheme --------------------
colorscheme nord
""""""""""""""""""""""""""""""""""""""""""""""""""
"------------ Enable indentation -----------------
filetype indent on
filetype plugin indent on
""""""""""""""""""""""""""""""""
"------------ Plugin settings -------------------
" NERDTree
"  Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p 
" Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
"""""""""""""""""""""""""""""""""""""""""""""""""

autocmd FileType json syntax match Comment +\/\/.\+$+
let g:ale_disable_lsp = 1

