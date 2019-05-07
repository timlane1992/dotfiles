set ts=4            " Tab width
set sw=4            " Shift width
set softtabstop=4   " If softtabstop equals tabstop and expandtab is not set,
                    " vim will always use tabs. When expandtab is set, vim will
                    " always use the appropriate number of spaces.
set smarttab        " Tab inserted when indenting and/or correct alignment spaces
set expandtab       " Use spaces when tab key is pressed
set autoindent
set cindent
set nosmartindent
set nocindent
filetype plugin indent on
"set hid             " Hides unsaved changed buffers
set ruler           " Cursor location
set title           " Screen title updates to open buffer
set mouse=a         " Enables mouse use in all modes
"set mousem=popup    " Enable pop up menu
set t_Co=256        " Sets vim to 256 colors
"set cinkeys=0{,0},0),:,0%,!^F,o,O,e
"au BufNewFile,BufRead *.html    set syntax=mason
"au BufNewFile,BufRead *.comp    set syntax=mason
"au BufNewFile,BufRead cf.*      set syntax=cfengine
"autocmd BufWinEnter * match ExtraWhitespace /\s\+$\| \+ze\t/
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
set background=dark
"colo molokai         " Love, edited comment color to lightslategray
colo OceanicNext
syntax enable               " Syntax highlighting
filetype plugin indent on   " Detection of such
" make search not suck "
set incsearch ignorecase smartcase hlsearch
" statusline from vim cheat sheet for programmer "
set number          " number lines
set nocompatible ruler laststatus=2 showcmd showmode
" Let fortran be
"let fortran_free_source=1
"let fortran_have_tabs=1
"let fortran_more_precise=1
"let fortran_do_enddo=1
" Setup minibugexplorer to use ctrl + arrows and tabs
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
" Binds shift-f and ctrl-f to detecting fortran syntax highlighting for
" fixed/free
" nmap <S-F> :set syntax=fortran<CR>:let b:fortran_fixed_source=!b:fortran_fixed_source<CR>:set syntax=text<CR>:set syntax=fortran<CR>
" nmap <C-F> :filetype detect<CR>

" Binds ctrl-bs to delete a word in insert
"imap <BS> <C-W>
" Binds ctrl-del delete a word in insert
"imap <C-kDel> <C-O>caw

" starts nerd tree and sets cursor to main window
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
" Shortcut to toggle NERDTree<F4><F4><F4>
"nmap <F3> :NERDTreeToggle<CR>
" Easier split navigation
" Use ctrl-[hjkl] to select the active split!
"nmap <silent> <c-k> :wincmd k<CR>
"nmap <silent> <c-j> :wincmd j<CR>
"nmap <silent> <c-h> :wincmd h<CR>
"nmap <silent> <c-l> :wincmd l<CR>
" prevent MBE from opening in unmodifiable buffers, I think
"let g:miniBufExplModSelTarget = 1
" Stuff for snipMate
":filetype plugin on

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo


" When opening a file, restore the cursor to the line it was on when the file
" closed.
function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END
