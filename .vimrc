set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" VUNDLE PLUGINS
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'valloric/youcompleteme'
" Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'kiddos/malokai.vim'
Plugin 'dikiaap/minimalist'
Plugin 'cocopon/iceberg.vim'
Plugin 'rip-rip/clang_complete'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'shougo/vimfiler.vim'
Plugin 'mbbill/undotree'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'thaerkh/vim-workspace'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'c.vim'
Plugin 'bling/vim-bufferline'
Plugin 'whatyouhide/vim-lengthmatters'
" Plugin 'ncm2/ncm2-github'
" END VUNDLE PLUGINS

call vundle#end()
" filetype plugin on

syntax enable
" set background-dark
" colorscheme solarized

" NERDTree
" autocmd vimenter * NERDTree
" end

" CONFIG VUNDLE PLUGINS
" CONFIG SYNTASTIC
let g:syntastic_python_checker_args='--ignore=E501'
" END CONFIG SYNTASTIC
" CONFIG vim-colors-solarized
set background=dark
" END CONFIG vim-colors-solarized
" CONFIG clang complete
 " path to directory where library can be found
 let g:clang_library_path='/usr/lib/llvm-3.8/lib'
 " or path directly to the library file
 let g:clang_library_path='/usr/lib64/libclang.so.7'
" END CONFIG clang complete
" END CONFIG VUNDLE PLUGINS
" CONFIG youcompleteme
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
" END CONFIG youcompleteme

""""""END VUNDLE CONFIG""""""


" Always show statusline
" set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256

" set mouse=a

set tabstop=4
" set softtabstop=4
" set expandtab
set number relativenumber
" set cursorline

filetype plugin on

set wildmenu

" set showmatch

set incsearch
set hlsearch
set nowrap
" set guioptions+=b
"

" set guicursor=n-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2,r-cr:hor20,o:hor50

" set guicursor=n-v-c-sm:block,i-ci-ve:ver100-iCursor,r-cr-o:ver20

 let &t_SI = "\e[6 q"
 let &t_EI = "\e[2 q"

"
" inoremap <Esc> <Esc><Esc>
"
" timeoutlen=0
"

set timeout timeoutlen=3000 ttimeoutlen=100

nnoremap <leader><space> :nohl<CR>

set foldenable
set foldlevelstart=10
set foldnestmax=10

set autoindent
set shiftwidth=4
set tabstop=4
set smartindent

filetype plugin on
syntax on

autocmd FileType python set breakindentopt=shift:4

augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" set spell

" modify selected text using combining diacritics
command! -range -nargs=0 Oli        call s:CombineSelection(<line1>, <line2>, '0305')
command! -range -nargs=0 Uli       call s:CombineSelection(<line1>, <line2>, '0332')
command! -range -nargs=0 Duli call s:CombineSelection(<line1>, <line2>, '0333')
command! -range -nargs=0 Strike   call s:CombineSelection(<line1>, <line2>, '0336')

function! s:CombineSelection(line1, line2, cp)
  execute 'let char = "\u'.a:cp.'"'
  execute a:line1.','.a:line2.'s/\%V[^[:cntrl:]]/&'.char.'/ge'
endfunction


map <C-j> <C-W><C-J>
map <C-k> <C-W><C-K>
map <C-h> <C-W><C-H>
map <C-l> <C-W><C-L>

set splitbelow
set splitright

" set screen scrolling
" set scrolloff=999
