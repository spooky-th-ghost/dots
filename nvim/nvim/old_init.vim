:set rnu
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse-=a
:set hidden
:set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
:set list
:set wildignore+=node_modules/**
:set wildignore+=templates/**
:set wildignore+=postman/**
:autocmd InsertEnter,InsertLeave * set cul!
:autocmd BufNewFile,BufRead *.wgsl set filetype=wgsl
:let mapleader = "\<Space>"

call plug#begin()
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " Status bar themes
Plug 'https://github.com/joshdick/onedark.vim' " Theme
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc
Plug 'airblade/vim-gitgutter' " Git integration
Plug 'rust-lang/rust.vim' " Rust fmt
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' } " Fuzzy Find
Plug 'ThePrimeagen/harpoon' " Fancy Marks
call plug#end()

:command NTC :let @+ = expand('%')

function! s:QuickVimGrep(text)
	exe 'vimgrep' a:text 'src/**'
	:cw
endfunction

let g:netrw_winsize = 30
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed = ''
let g:rustfmt_autosave = 1
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'onedark'
let g:ctrlp_show_hidden = 1
:colorscheme onedark
"hi Normal guibg=NONE ctermbg=NONE
:highlight LineNr ctermfg=146

" GitGutter config
nmap <Leader>gn <Plug>(GitGutterNextHunk)
nmap <Leader>gp <Plug>(GitGutterPrevHunk)
nmap <Leader>gh :GitGutterLineHighlightsToggle<CR>
nmap <Leader>gs :GitGutterSignsToggle<CR>

nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bn<CR>
nnoremap <Leader>t :Lex<CR>
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Harpoon Bindings

" nnoremap <leader>hm :lua require("harpoon.mark").add_file()<cr>
" nnoremap <leader>ht :lua require("harpoon.ui").toggle_quick_menu()<cr>

" Rust Macros
let @d = 'i#[derive()]�2ha'

source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/coc.vim
:luafile harpoon.lua
