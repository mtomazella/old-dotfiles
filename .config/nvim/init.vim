:set number
:set relativenumber
:set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
:set mouse=a

call plug#begin()

" Telescope
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/nvim-lua/plenary.nvim'
" Dev Icons
Plug 'https://github.com/ryanoasis/vim-devicons'        " Developer Icons
:set encoding=UTF-8
" Coc
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
" Other Plugins
Plug 'https://github.com/vim-airline/vim-airline'       " Airline
Plug 'http://github.com/tpope/vim-surround'             " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree'            " NerdTree
Plug 'https://github.com/tpope/vim-commentary'          " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color'              " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/tc50cal/vim-terminal'          " Vim Terminal
Plug 'https://github.com/preservim/tagbar'              " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors'  " CTRL + N for multiple cursors

call plug#end()

" Set Themes
let g:airline_theme='onedark'

" Key Remapping
  " Arrow / Insert Normal
    :nnoremap ç i
    :nnoremap i k
    :nnoremap k j
    :nnoremap j h
  " Arrow / Insert Visual
    :vnoremap ç i
    :vnoremap i k
    :vnoremap k j
    :vnoremap j h
  " Telescope Bindings
    :nnoremap <leader>ff <cmd>Telescope find_files<cr>
    :nnoremap <leader>fg <cmd>Telescope live_grep<cr>
    :nnoremap <leader>fb <cmd>Telescope buffers<cr>
    :nnoremap <leader>fh <cmd>Telescope help_tags<cr>
  " Quickly insert an empty new line without entering insert mode
    :nnoremap o o<Esc>
    :nnoremap O O<Esc>
  " Move line / selection up and down
    :nnoremap <C-k> :m .+1<CR>==
    :nnoremap <C-i> :m .-2<CR>==
    :inoremap <C-k> <Esc>:m .+1<CR>==gi
    :inoremap <C-i> <Esc>:m .-2<CR>==gi
    :vnoremap <C-i> :m '<-2<CR>gv=gv    
    :vnoremap <C-k> :m '>+1<CR>gv=gv
  " Delete, not cut
    :nnoremap d "_d

  " Airline Icons
    let g:airline_powerline_fonts = 1

    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    
