" set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
" set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256

set mouse=a

set tabstop=4
set softtabstop=4
set expandtab
set number relativenumber
" set cursorline

" filetype indent on

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

" inoremap <Esc> <Esc><Esc>
"
" timeoutlen=0
"
set timeout timeoutlen=3000 ttimeoutlen=100

nnoremap <leader><space> :nohl<CR>

set foldenable
set foldlevelstart=10
set foldnestmax=10

nnoremap j gj
nnoremap k gk

nnoremap <leader>s :mksession<CR>

set autoindent
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


map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
