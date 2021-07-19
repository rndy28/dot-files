""""""""""""""""""""""""""""""""""
"   Usability
""""""""""""""""""""""""""""""""""

set smarttab
set tabstop=4
set shiftwidth=4
" use spaces instead of tabs
set expandtab
set guicursor=

""""""""""""""""""""""""""""""""""
" Keybinds
""""""""""""""""""""""""""""""""""

" NerdTree Keybinding
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Copy From Keyboard
vnoremap <leader>y "+y
" Paste From Keyboard
vnoremap <leader>p "+p
" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')


""""""""""""""""""""""""""""""""""
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
    Plug 'ayu-theme/ayu-vim' " colorscheme
    Plug 'bling/vim-airline' " bottom status bar
    Plug 'Yggdroot/indentLine' " line indentation visualization
    Plug 'scrooloose/nerdtree' " side directory viewer
    Plug 'sheerun/vim-polyglot' " syntax hightlighting
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

" --------- indentLine settings -------------------
let g:indentLine_showFirstLevelIndent=1
let g:indentLine_setColors=0


""""""""""""""""""Neovide"""""""""""""""""
let g:neovide_cursor_trail_length=0.8
let g:neovide_cursor_antialiasing=v:false
let g:neovide_cursor_vfx_mode = "ripple"
let g:neovide_cursor_vfx_particle_lifetime=0.8
let g:neovide_cursor_vfx_particle_density=7.0
let g:neovide_transparency=0.8
""""""""""""""""""""""""""""""""""""""""""
set nocompatible
