" YodaPop Neovim Initialization settings

" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set number
":set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set laststatus=2		"Always show statusline
:set noshowmode			"Uncomment to prevent non-normal modes showing in and below powerline

" Plugins - Using Vim-Plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

Plug 'http://github.com/tpope/vim-surround'				" Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree'			" NerdTree
Plug 'https://github.com/tpope/vim-commentary'			" For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline'		" Status bar
Plug 'https://github.com/ap/vim-css-color'				" CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons'		" Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal'			" Vim Terminal
Plug 'https://github.com/preservim/tagbar'				" Tagbar for code navigation

call plug#end()

" NerdTree settings and keymap
"""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Other stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>			"Use F8 to toggle the tag bar
:set completeopt-=preview			"For No Previews
" :colorscheme jellybeans			"Uncomment to set default colorscheme
:imap ii <Esc>						"Remap standard Vim escape to normal mode key
