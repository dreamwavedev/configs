set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()
Plug 'tpope/vim-sensible'
" Plug 'w0rp/ale', { 'on': 'ALELoad' }
Plug 'w0rp/ale' " , { 'on': 'Completers' }
Plug 'valloric/youcompleteme', { 'on': 'YCMLoad' }

Plug 'majutsushi/tagbar'
"Plug 'Rip-Rip/clang_complete', { 'on': 'CLALoad' }

" Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile' }
"Plug 'justmao945/vim-clang'
Plug 'altercation/vim-colors-solarized'
"Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
"Plug 'kiddos/malokai.vim'
"Plug 'dikiaap/minimalist'
"Plug 'cocopon/iceberg.vim'
Plug 'kristijanhusak/vim-hybrid-material'
"Plug 'shougo/vimfiler.vim'
" Plugin 'mbbill/undotree'
"Plug 'yuttie/comfortable-motion.vim'
"Plug 'thaerkh/vim-workspace'
Plug 'xuyuanp/nerdtree-git-plugin'
" Plug 'c.vim'
"Plug 'vim-scripts/c.vim'
"Plug 'bling/vim-bufferline'
" Plugin 'whatyouhide/vim-lengthmatters'
" Plug 'kien/ctrlp.vim'
" colorschemes
Plug 'agude/vim-eldar'
" Plug 'seoul'
Plug 'vim-scripts/seoul'
Plug 'challenger-deep-theme/vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'junegunn/seoul256.vim'
Plug 'ayu-theme/ayu-vim'

Plug 'arcticicestudio/nord'
Plug 'joshdick/onedark.vim'
Plug 'romainl/flattened'
Plug 'chase/focuspoint-vim'
Plug 'wmvanvliet/vim-blackboard'
Plug 'liuchengxu/space-vim-theme'
Plug 'yous/vim-open-color'
Plug 'sainnhe/vim-color-forest-night'
Plug 'maksimr/Lucius2'
Plug 'nightsense/cosmic_latte'
"Plug 'DankNeon/vim'
"Plug 'SolomonSklash/vim-snazzy'
"Plug 'connorholyday/vim-snazzy'
Plug 'cseelus/vim-colors-tone'
Plug 'srcery-colors/srcery-vim'
Plug 'tjammer/blayu.vim'
Plug 'kaicataldo/material.vim'
Plug 'hzchirs/vim-material'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'connorholyday/vim-snazzy'
Plug 'kmszk/skyknight'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'caksoylar/vim-mysticaltutor'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"Plug 'yuttie/comfortable-motion.vim'


"Plug '/usr/local/opt/fzf'
"Plug 'junegunn/fzf.vim'

"Plug 'wesQ3/vim-windowswap'
" Plugin 'ncm2/ncm2-github'
" Plugin 'racer-rust/vim-racer'
" Plugin 'neomake/neomake'
" Plugin 'powerman/vim-plugin-autosess'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

" Plugin 'VundleVim/Vundle.vim'

" VUNDLE PLUGINS
" Plugin 'scrooloose/syntastic'
" Plugin 'w0rp/ale'
" Plugin 'maralla/validator.vim'

" Plugin 'altercation/vim-colors-solarized'
" Plugin 'tpope/vim-surround'
" Plugin 'vim-airline/vim-airline'
" Plugin 'valloric/youcompleteme'
" Plugin 'jiangmiao/auto-pairs'
" Plugin 'scrooloose/nerdtree'
" Plugin 'kiddos/malokai.vim'
" Plugin 'dikiaap/minimalist'
" Plugin 'cocopon/iceberg.vim'
" Plugin 'rip-rip/clang_complete'
" Plugin 'octol/vim-cpp-enhanced-highlight'
" Plugin 'kristijanhusak/vim-hybrid-material'
" Plugin 'shougo/vimfiler.vim'
" Plugin 'mbbill/undotree'
" Plugin 'yuttie/comfortable-motion.vim'
" Plugin 'thaerkh/vim-workspace'
" Plugin 'xuyuanp/nerdtree-git-plugin'
" Plugin 'c.vim'
" Plugin 'bling/vim-bufferline'
" Plugin 'whatyouhide/vim-lengthmatters'
" Plugin 'kien/ctrlp.vim'
" colorschemes
" Plugin 'agude/vim-eldar'
" Plugin 'seoul'
"Plugin 'challenger-deep-theme/vim'
"Plugin 'NLKNguyen/papercolor-theme'
"Plugin 'junegunn/seoul256.vim'
"Plugin 'ayu-theme/ayu-vim'
" P"lugin 'wesQ3/vim-windowswap'
" Plugin 'ncm2/ncm2-github'
" Plugin 'racer-rust/vim-racer'
" Plugin 'neomake/neomake'
" Plugin 'powerman/vim-plugin-autosess'


" END VUNDLE PLUGINS
"
" in Konsole make it work past 220th column:
" set ttymouse=sgr

"call vundle#end()
" filetype plugin on

syntax enable
set cursorline
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
 let g:clang_library_path='/usr/lib64/libclang.so.8'
" END CONFIG clang complete
" END CONFIG VUNDLE PLUGINS
" CONFIG youcompleteme
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
" END CONFIG youcompleteme
" CONFIG racer
" let g:racer_cmd = "/home/user/.cargo/bin/racer"
"let g:racer_experimental_completer = 1
"au FileType rust nmap gd <Plug>(rust-def)
"au FileType rust nmap gs <Plug>(rust-def-split)
"au FileType rust nmap gx <Plug>(rust-def-vertical)
"au FileType rust nmap <leader>gd <Plug>(rust-doc)
 " path to directory where library can be found
 "let g:clang_library_path='/usr/lib/llvm-3.8/lib'
 " or path directly to the library file
 "let g:clang_library_path='/usr/lib64/libclang.so.3.8'

" nnoremap gd :only<bar>vsplit<CR>gd

""""""END VUNDLE CONFIG""""""


" Always show statusline
" set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)

" set t_Co=256
set termguicolors
" colorscheme hybrid_material
set background=dark
" colorscheme challenger_deep
"colorscheme ayu
colorscheme material
let ayucolor="mirage"
" colorscheme ayu

" colorscheme PaperColor
" colo seoul256
" let g:seoul256_background = 233

set mouse=a

set tabstop=4
" set softtabstop=4
" set expandtab
set number relativenumber
" set cursorline

filetype plugin on

" set wildmenu

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
" set autoread:
"set autoread
" au CursorHold * checktime  
" Neomake
" Gross hack to stop Neomake running when exitting because it creates a zombie cargo check process
" which holds the lock and never exits. But then, if you only have QuitPre, closing one pane will
" disable neomake, so BufEnter reenables when you enter another buffer.
"let s:quitting = 0
"au QuitPre *.rs let s:quitting = 1
"au BufEnter *.rs let s:quitting = 0
"au BufWritePost *.rs if ! s:quitting | Neomake | else | echom "Neomake disabled"| endif
"let g:neomake_warning_sign = {'text': '?'}



set timeout timeoutlen=3000 ttimeoutlen=100

" set leader
let mapleader=" "
nnoremap <leader><space> :nohl<CR>
nnoremap <leader>? :ALEDetail<CR>
" make esc work in :terminal to go to normal mode
" tnoremap <Esc> <C-\><C-n>

"set foldenable
"set foldlevelstart=10
"set foldnestmax=10

set autoindent
set shiftwidth=4
set tabstop=4
set smartindent

filetype plugin on
syntax on

autocmd FileType python set breakindentopt=shift:4

"augroup resCur
"  autocmd!
"  autocmd BufReadPost * call setpos(".", getpos("'\""))
"augroup END

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
"
" Set command aliases
cnoreabbrev NT NERDTree
cnoreabbrev CM CtrlPMixed


" startup:
"function! StartUp()
"    if 0 == argc()
"        NERDTree
"    end
"endfunction

" autocmd VimEnter * call StartUp()

" nnoremap f :tab split \| YcmCompleter GoToDefinition<CR>
"nnoremap gd :tab split \| YcmCompleter GoToDefinition<CR>
"nnoremap ge :tab split \| YcmCompleter GoToDeclaration<CR>
"nnoremap gi :tab split \| YcmCompleter GoToImprecise<CR>

"nnoremap gsd :vsplit \| YcmCompleter GoToDefinition<CR>
"nnoremap gse :vsplit \| YcmCompleter GoToDeclaration<CR>
"nnoremap gsi :vsplit \| YcmCompleter GoToImprecise<CR>
nnoremap gdv :ALEGoToDefinitionInVSplit<CR>
nnoremap gds :ALEGoToDefinitionInSplit<CR>
nnoremap gdd :ALEGoToDefinition<CR>

nnoremap giv :ALEGoToTypeDefinitionInVSplit<CR>
nnoremap gis :ALEGoToTypeDefinitionInSplit<CR>
nnoremap gid :ALEGoToTypeDefinition<CR>

nnoremap <C-a> :ALEGoToDefinitionInVSplit<CR>


nnoremap vp :vsplit \| CtrlP<CR>
nnoremap tp :tab split \| CtrlP<CR>
nnoremap gb gT

command Vt vertical terminal

" quick escape terminal
" nnoremap <C-n> <Ctrl-\><Ctrl-n>
tnoremap <C-n> <C-\><C-n>

set shell=/bin/fish

" if hidden is not set, TextEdit might fail.
set hidden

" Some server have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` for format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` for fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)


" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }



" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Autolinting
"autocmd BufWritePost * ALELint
"autocmd VimEnter * ALEDisable
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1
let g:ale_completion_enabled = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

" tag stuff
function! FollowTag()
  if !exists("w:tagbrowse")
    vsplit
    let w:tagbrowse=1
  endif
  execute "tag " . expand("<cword>")
endfunction

nnoremap <c-i> :call FollowTag()<CR>
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"# Feed the output of fd into fzf
"fd --type f | fzf

"# Setting fd as the default source for fzf
"export FZF_DEFAULT_COMMAND='fd --type f'

"# Now fzf (w/o pipe) will use fd instead of find
"fzf

"# To apply the command to CTRL-T as well
"export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
"export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

nnoremap <leader>b :Buffers<CR>
nnoremap <c-p> :FZF<CR>
nnoremap <leader>p :Rg<CR>

nnoremap <leader>w :w<CR>
