set nocompatible
set encoding=utf-8 fileencoding=utf-8 termencoding=utf-8
set secure
set textwidth=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set backspace=indent,eol,start
set nolist
set listchars=tab:⇥\ ,trail:·,extends:>,precedes:<,nbsp:␣,eol:⏎
set autoindent
set nowrap
set cursorline
set ignorecase
set nobackup
set nowritebackup
set noswapfile
set wildignore=*.swp,*.bak,*.pyc,*.class
set number relativenumber
set ruler
set lazyredraw
set regexpengine=1
set history=1000
filetype plugin on
syntax on


" nnoremap <SPACE> <Nop>
let mapleader = "\<Space>"
"nnoremap <Leader>x :.!perl -pe "/- \[ \]/ ? s/- \[ \]/- \[X\]/ : s/- \[X\]/- \[ \]/"<CR>
" C-R (redo) pastes the content of a register without leaving insert mode
nnoremap <Leader>d i<C-R>=strftime("%Y-%m-%d")<CR>
" Make Vim show ALL white spaces as a character
" https://stackoverflow.com/a/1675752/1521064
nnoremap <Leader>l :set list!<CR>


" So that you can quit with `;q`
" An alternative was to add `command Q q` so that I could quit with `:Q`
nnoremap ; :
vnoremap ; :


" http://vim.wikia.com/wiki/Avoid_the_escape_key
" Also, stay where you are instead of going back 1 position
inoremap jj <ESC>l


" Center screen on next/previous selection.
nnoremap n nzz
nnoremap N Nzz
" Last and next jump should center too.
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz


" Change cursor shape in different modes For iTerm2 on OS X
" http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


" Disable arrows. Don't use them!
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>


" Allow saving of files as sudo when I forgot to start vim using sudo. Save
" from path modification attacks and expliticly discard standard output.
cmap w!! w !sudo /usr/bin/tee > /dev/null %


set splitbelow
set splitright
let g:netrw_altv = 1 " when navigating a folder,
                     " hitting <v> opens a window at right side (default is left side)


" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
endfunction


" FileType specific settings
" You can invoke equalprg (reindent) with gg=G
autocmd FileType go setlocal equalprg=gofmt
autocmd FileType java autocmd BufWritePre <buffer> %s/\s\+$//e
autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType make setlocal noexpandtab
autocmd FileType python setlocal equalprg=black\ --quiet\ -l\ 140\ -
autocmd FileType xml setlocal equalprg=xmllint4
autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

if has('clipboard')
    if has('unnamedplus')
        " When possible use + register for copy-paste
        set clipboard=unnamed,unnamedplus
    else
        " On mac and Windows, use * register for copy-paste
        set clipboard=unnamed
    endif
endif


" My macros. Convert a macro to text with `"ap` for a macro registered on `a`. Insert `<ESC>` in insert mode with `<C-v><Esc>`.
let @4 = '0g_1000a d40|j' " Insert spaces in current line up to column 40; move to the line below so that you can execute this on a block of text
let @8 = '0g_1000a d80|j' " Insert spaces in current line up to column 80; move to the line below so that you can execute this on a block of text
let @i = 'a<i></i>3hi'    " Insert HTML tags for italic

