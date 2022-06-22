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
call plug#end()

let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed = ''

" Jump between hunks
nmap <Leader>gn <Plug>(GitGutterNextHunk)
nmap <Leader>gp <Plug>(GitGutterPrevHunk)

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:NERDTreeGitStatusUseNerdFonts = 1 
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'onedark'
:colorscheme onedark

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-o> o<Esc>
nnoremap <C-p> O<Esc>
nnoremap <Leader># :call ToggleNum()<CR>
nnoremap <Leader>. :set list!<CR>

function ToggleNum()
	if &rnu
		set nornu
	else
		set rnu
	endif
endfunction

source $HOME/.config/nvim/plug-config/coc.vim " Coc settings
source $HOME/.config/nvim/plug-config/airline.vim " Airline Styling
