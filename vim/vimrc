
"" Shortcuts -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
let mapleader = ","                 " easier to reach
nmap <silent> <C-L> <C-L>:nohlsearch<CR>:match<CR>:diffupdate<CR> " ctrl-L to clear search highlight


"" Color options ----------------------------------------------------------------------------------------------------------------------
colo desert
syntax enable
hi Search ctermfg=black ctermbg=yellow


" cheat-sheet  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
" g - global
"   :[range]g/pattern/cmd          " usage
"   :g/^\s*$/d                     " delete all blank lines
"   :g/^/pu =\"\n\"                " double space entire file
"
" remap - remap
"   :nnoremap d "_d                       " map dd to the black whole register             
"   :vnoremap d "_d                       " and use v/V with x to cut
"   :nnoremap p "0p                      " only paste from the yank register          
"
" map - map
"   map <Leader>A  oanother line of cool text <Esc>  " ,A now creates a newline and some text
"

" whitespace protocol -------------------------------------------------------------------------------------------------------------------
set backspace=indent,eol,start  " Allow backspacing over everything in insert mode
set nojoinspaces                " Do not insert two spaces after '.' when using J
set shiftwidth=2
set shiftround                  " Round indent to multiple of 'shiftwidth'
set autoindent                  " New lines inherit the indentation of previous lines.
set tabstop=2                   " Width of displayed tabs
set expandtab                   " Convert tabs to spaces.
set smarttab                    " replace tab with tabstop number of spaces
set tabline=%!tabber#TabLine()
set foldmethod=indent           " Fold based on indention levels.
set foldnestmax=3               " Only fold up to three nested levels.
set nofoldenable                " Disable folding by default.

"" rendering options -------------------------------------------------------------------------------------------------------------------
set encoding=utf-8              " Use UTF-8 as default file encoding
set spelllang=en_us             " Language and region to use for spellchecking
set showcmd
set scrolloff=4                 " Keep lines above/below cursor visible
set sidescrolloff=5             " Keep columns left/right of cursor visible
set display+=lastline           " Show as much as possible of wrapped last line
set nowrap                      " Do not wrap long lines by default
set linebreak                   " Avoid wrapping a line in the middle of a word.
set lazyredraw                  " Do not redraw screen during macro execution
set helpheight=1000             " Maximize help window vertically
set formatoptions+=j            " Remove extra comment char when joining lines
"set mouse=a                     " Enable mouse for scrolling and resizing.
set title                       " Set the window’s title, reflecting the file currently being edited.
set number                      " line numbers on left side
set ruler                       " Show cursor position if status line not visible
nnoremap n nzz                  " keep screen centered on cursor
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
 
" search settings
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches
set ignorecase                  " search ignore case
set smartcase                   " Automatically switch search to case-sensitive when search query contains an uppercase letter.

" command line 
set wildmenu                    " Command line completion
set cmdheight=2                 " Reserve two lines for command area
set pumheight=8                 " Limit height of popup menu
set showcmd                     " Show incomplete key sequences
set complete-=3                 " Limit the files searched for auto-completes.
set completeopt+=longest        " Only insert longest common string
set hidden                      " Hide files in the background instead of closing them.
set autoread                    " Reload unchanged buffer when file changes
set history=500                 " Keep 500 lines of history
set backupdir=./.backup,.,/tmp  " Directory to store backup files.
set directory=.,./.backup,/tmp  " Directory to store swap files.
set wildignore+=.pyc            " Ignore these files

if has("autocmd")               " set filetype settings
  filetype plugin indent on

  augroup FileTypeOptions
    autocmd!

    " For all text files set 'textwidth' to 78 characters.
    autocmd FileType text,markdown setlocal textwidth=78 wrap

    " Always use spelling for particular file types
    autocmd FileType gitcommit setlocal spell

    " Append semicolon or comma to end of line in insert mode
    autocmd FileType c,cpp,css,javascript,php inoremap <buffer> ;; <Esc>A;
    autocmd FileType c,cpp,css,javascript,php inoremap <buffer> ,, <Esc>A,

    " Automatically complete closing tags
    autocmd FileType html,liquid,markdown,php,xml inoremap <buffer> </ </<C-x><C-o>
    autocmd FileType html,liquid,xml setlocal textwidth=120

    set cursorline
    augroup CursorLine
      autocmd!

      " Only highlight cursor line in active buffer window
      autocmd WinLeave * set nocursorline
      autocmd WinEnter * if &filetype == 'qf' | set nocursorline | else | set cursorline | endif
    augroup END

  
    augroup Cmdwin
      autocmd!
      " Never show line numbers in command-line window as they are not useful
      " and take up space (normally it inherits this setting like any other
      " window)
      autocmd CmdwinEnter * set nonumber
    augroup END
  augroup END
endif

" Plugins  ------------------------------------------------------------------------------------------------
set rtp+=/Library/Frameworks/Python.framework/Versions/3.9/lib/python3.9/site-packages/powerline/bindings/vim
set laststatus=2                " powerline 
set t_Co=256                    " powerline
execute pathogen#infect()       




" remember where we left off last session 
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


function PersistentUndoHistory()
  let vimDir = '$HOME/.vim'
  if stridx(&runtimepath, expand(vimDir)) == -1
    " vimDir is not on runtimepath, add it
    let &runtimepath.=','.vimDir
  endif
  if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undo_history')
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
  endif
endfunction


function HighlightBadWhitespace() 
  highlight LeadingTab ctermbg=blue guibg=blue
  highlight LeadingSpace ctermbg=darkgreen guibg=darkgreen
  highlight EvilSpace ctermbg=darkred guibg=darkred
  au Syntax * syn match LeadingTab /^\t\+/
  au Syntax * syn match LeadingSpace /^\ \+/
  au Syntax * syn match EvilSpace /\(^\t*\)\@<!\t\+/ " tabs not preceeded by tabs
  au Syntax * syn match EvilSpace /[ \t]\+$/ " trailing space
  highlight! link TrailingWhitespace Error
  augroup TrailingWhiteSpace
    autocmd!
    autocmd BufWinEnter * if &modifiable | match TrailingWhitespace /\s\+$/ | endif
    autocmd InsertEnter * if &modifiable | match TrailingWhitespace /\s\+\%#\@<!$/ | endif
    autocmd InsertLeave * if &modifiable | match TrailingWhitespace /\s\+$/ | endif
    autocmd BufWinLeave * if &modifiable | call clearmatches() | endif
  augroup END
endfunction








" --- not in use ---
"
"

