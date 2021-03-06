:set nu
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
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'Xuyuanp/nerdtree-git-plugin' " NerdTree git status highlights
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " Status bar themes
Plug 'https://github.com/joshdick/onedark.vim' " Theme
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc
Plug 'airblade/vim-gitgutter' " Git integration
Plug 'rust-lang/rust.vim' " Rust fmt
Plug 'https://github.com/ctrlpvim/ctrlp.vim' " Fuzzy File search
call plug#end()

let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed = ''
let g:rustfmt_autosave = 1

" Jump between hunks
nmap <Leader>gn <Plug>(GitGutterNextHunk)
nmap <Leader>gp <Plug>(GitGutterPrevHunk)

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeShowHidden=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'onedark'
let g:ctrlp_show_hidden = 1
:colorscheme onedark

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-h> :bp<CR>
nnoremap <C-l> :bn<CR>
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
nnoremap <Leader># :call ToggleNum()<CR>
nnoremap <Leader>. :set list!<CR>

function ToggleNum()
	if &rnu
		set nornu
	else
		set rnu
	endif
endfunction

if has('win32')
	let g:airline_theme = 'night_owl'
	source $LOCALAPPDATA\nvim\plug-config\coc.vim " Coc settings
	source $LOCALAPPDATA\nvim\plug-config\airline.vim " Airline Styling
else
	source $HOME/.config/nvim/plug-config/coc.vim " Coc settings
	source $HOME/.config/nvim/plug-config/airline.vim " Airline Styling
endif
