:set number
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a
:set hidden
:set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
:set list
:set wildignore+=node_modules/**
:set wildignore+=templates/**
:set wildignore+=postman/**
:autocmd InsertEnter,InsertLeave * set cul!

call plug#begin()
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " Status bar themes
Plug 'https://github.com/joshdick/onedark.vim' " Theme
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc
Plug 'airblade/vim-gitgutter' " Git integration
Plug 'rust-lang/rust.vim' " Rust fmt
Plug 'https://github.com/ctrlpvim/ctrlp.vim' " Fuzzy File search
call plug#end()

:command NTC :let @+ = expand('%')

function! s:QuickVimGrep(text)
	exe 'vimgrep' a:text 'src/**'
	:cw
endfunction

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

nnoremap <C-t> :Explore<CR>
nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bn<CR>
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader># :call ToggleNum()<CR>
nnoremap <Leader>. :set list!<CR>

inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap " ""<Esc>ha
inoremap < <><Esc>ha

if has('win32')
	let g:airline_theme = 'night_owl'
	source $LOCALAPPDATA\nvim\plug-config\coc.vim " Coc settings
	source $LOCALAPPDATA\nvim\plug-config\airline.vim " Airline Styling
else
	source $HOME/.config/nvim/plug-config/coc.vim " Coc settings
	source $HOME/.config/nvim/plug-config/airline.vim " Airline Styling
endif
