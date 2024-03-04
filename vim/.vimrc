autocmd VimEnter * echomsg "( * ) ( * )"

" Make sure plugin manager is automatically installed including the plugins themselves.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible                                  " Turn off vi compatibility.
filetype indent plugin on                         " Enable file type based indentation.
syntax on                                         " Enable syntax highlighting
set hidden                                        " If the active buffer is modified, Vim will automatically hide it when we navigate away from it.

call plug#begin()                                 " Load plugins.
Plug 'agude/vim-eldar'
Plug 'lifepillar/vim-colortemplate'
Plug 'easymotion/vim-easymotion'                  " Highlighs all possible choices and allows you to press one key to jump directly to the target. Type <space> twice then movement key like w, f, t, b, e ,k, j etc. to invoke EasyMotion.
Plug 'junegunn/vim-plug'                          " Documentation for the plugin manager.
Plug 'simnalamburt/vim-mundo'                     " Vim undo tree visualizer.
Plug 'yorickpeterse/happy_hacking.vim'
Plug 'guns/vim-sexp'					                    " Precision Editing for S-expressions.
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'nelstrom/vim-visual-star-search'            " Start a * or # search from a visual block.
Plug 'tpope/vim-commentary'                       " Comment stuff out.
Plug 'tpope/vim-surround'                         " Quoting/parenthesizing made simple.
Plug 'tpope/vim-repeat'					                  " Enable repeating supported plugin maps with .
Plug 'tpope/vim-abolish'                          " Easily search for, substitute, and abbreviate multiple variants of a word.
Plug 'skywind3000/asyncrun.vim'                   " Run shell commands asyncronously and output to quickfix window.
Plug 'kana/vim-smartinput'                        " Smart input for programmers: https://bit.ly/2ZdNJuF
Plug 'google/vim-searchindex'                     " Display number of search matches & index of a current match.
Plug 'dense-analysis/ale'				                  " Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support.
Plug 'machakann/vim-highlightedyank'			        " Make the yanked region apparent!
Plug 'airblade/vim-rooter'				                " Changes Vim working directory to project root (identified by presence of known directory or file).
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }		      " A command-line fuzzy finder.
Plug 'junegunn/fzf.vim'					                  " fzf loves vim.
Plug 'pbogut/fzf-mru.vim'				                  " Allows using awesome CtrlP MRU plugin with even more amazing FZF.
Plug 'romainl/vim-cool'					                  " A very simple plugin that makes hlsearch more useful.
Plug 'andymass/vim-matchup'				                " vim match-up: even better %. Navigate and highlight matching words. Modern matchit and matchparen replacement.
Plug 'kana/vim-textobj-user'                      " Dependency for kana/vim-textobj-entire.
Plug 'kana/vim-textobj-entire'                    " Text objects for entire buffer.
Plug 'fvictorio/vim-textobj-backticks'			      " Vim text objects for regions inside backticks.
Plug 'deathlyfrantic/vim-textobj-blanklines'		  " A Vim text object for selecting blank lines. a<Space>/i<Space> for groups of blank (only whitespace) lines. ip/ap (inner/outer paragraph) works out of the box for all blank lines.
Plug 'Julian/vim-textobj-brace'				            " A text object for the closest inner () {} *or* []. aj/ij for the closest region between any of () [] or {}.
Plug 'Chun-Yang/vim-textobj-chunk'			          " ac/ic for all the lines contain one of {}, [], or () pairs.
Plug 'johntyree/vim-textobj-comment'			        " Vim text objects for comments. ac/ic for a comment.
Plug 'kana/vim-textobj-datetime'			            " ada/ida and others for date and timer. da = auto, df = full, dd = date, dt = time
Plug 'glts/vim-textobj-indblock'			            " Vim text objects for blocks of indentation whitespace. ao/io for a block of indentation (i.e.  spaces).
Plug 'kana/vim-textobj-lastpat'				            " Text objects for the last searched pattern. a//i/ for a region matched to the last search pattern.
Plug 'kana/vim-textobj-line'				              " Text object for the current line. al/il for the current line.
Plug 'sgur/vim-textobj-parameter'			            " Provides text objects (a, and i, by default) to select parameters of functions. Use 'i2,' for trailing whitespace characters.
Plug 'saaguero/vim-textobj-pastedtext'			      " A convenient text object for last pasted text. By default it creates the following mapping: gb. vgb Select last pasted text.  =gb Re-indent last pasted text.  dgb Delete last pasted text.  gcgb Comment last pasted text
Plug 'paulhybryant/vim-textobj-path'			        " ap/ip for next file path (w/o basename), aP/iP for the previous file path (w/o basename).
Plug 'beloglazov/vim-textobj-punctuation'		      " au/iu for the text between the cursor position till the closest punctuation. 
Plug 'reedes/vim-textobj-quote'				            " aq/iq aQ/iQ for “typographic-quoted” strings.
Plug 'saihoooooooo/vim-textobj-space'			        " aS/iS for a region filled with various space characters.
Plug 'kana/vim-textobj-syntax'				            " Text object for syntax highlighted items. ay/iy for a syntax-highlighted item.
Plug 'whatyouhide/vim-textobj-xmlattr'			      " A vim text object for XML/HTML attributes. ax/ix for XML/HTML attributes.
Plug 'kana/vim-textobj-function'                  " a Vim plugin to text objects for functions.
Plug 'chaoren/vim-wordmotion'				              " More useful word motions for Vim.
Plug 'mileszs/ack.vim'                            " Run your favorite search tool from Vim, with an enhanced results list.
Plug 'vim-erlang/vim-erlang-tags'                 " Creates a tags file from Erlang source files.
Plug 'mkohlhaas/vim-mpc'                          " A music player client for Vim.
Plug 'lsrdg/potion.vim'
Plug 'vimwiki/vimwiki'                            " Personal wiki for Vim
Plug 'christoomey/vim-system-copy'                " System copy provides vim mappings for copying / pasting text to the os specific clipboard.
Plug  'ycm-core/YouCompleteMe'                    " Code-completion engine for Vim
call plug#end()

" https://github.com/airblade/vim-rooter#how-to-identify-a-root-directory
let g:rooter_patterns = ['.git', 'Makefile', '*.sln', 'build/env.sh']
" To stop Rooter echoing the project directory:
let g:rooter_silent_chdir = 1

" Use syntaxerl for linting erlang files (https://github.com/ten0s/syntaxerl)
let g:ale_linters = { 'erlang': ['syntaxerl'] }

colorscheme happy_hacking

highlight MatchParen ctermbg=darkgrey guibg=darkgrey

set completeopt=longest,menuone

" Text object comment default key binding collide with chunck text object.
let g:textobj_outer_comment_key = 'ab'
let g:textobj_inner_comment_key = 'ib'
let g:textobj_outer_Comment_key = 'aB'

if executable('ag')                                     " Use silver searcher (if available) for finding files. Invoke with ':Ack'.
  let g:ackprg = 'ag --vimgrep'
endif

set mouse=a                                             " Enable mouse.
set nowrap

packadd! matchit                                        " This plugin makes the "%" command jump to matching HTML tags, if/else/endif in Vim scripts, etc.

set ignorecase                                          " Ignore case when searching.
set smartcase                                           " Turn of ignorecase when search pattern contains uppercase character(s).
set autoindent                                          " Respect indentation when starting a new line.
set expandtab                                           " Expand tabs to spaces. Essential in Python/Nim.
set tabstop=2                                           " Number of spaces tab is counted for. 2 is 2 is default for Nim.
set shiftwidth=2                                        " Number of spaces to use for autoindent.
set backspace=2                                         " Fix backspace behavior on most terminals.
set path+=**                                            " Search down in to subfolders. Applies to all file operations.
set wildmenu                                            " Show completions above status line.
set wildmode=full                                       " Behavior close to zsh shell.
set hlsearch                                            " Highlight searches.
set incsearch                                           " Highlight found searches while typing.
set history=1000                                        " Set command history size.
set number
set relativenumber
call mkdir($HOME . "/.vim/undodir", "p")                " Set up undos.
set undodir=~/.vim/undodir
set undofile
call mkdir($HOME . "/.vim/swap", "p")                   " Set up swap directory. Does not work. Create directory manually.
set directory=~/.vim/swap/
set encoding=utf-8

" Map the leader key to a spacebar.
let mapleader = "\<space>"

" Move line down.
" map _ ddp
" Move line up.
" map - ddkP

" Additional <ESC> mappings:
" jk, in INSERT mode
inoremap jk <ESC>

" Block comment current line using asterisks
noremap <leader>bc :normal! I*  <Esc>A  *<Esc>yyPVr*jpVr*

" Remap fzf actions to be prefixed by a leader key.
" Add namespace for fzf.vim exported commands.
let g:fzf_command_prefix = 'Fzf'
" let g:fzf_preview_window = 'right:60%'
noremap 'f :FzfFiles<CR>
noremap 'l :FzfLines<CR>
noremap 'b :FzfBLines<CR>
noremap 'm :FzfMarks<CR>
noremap 'h :FzfHelptags<CR>
noremap 'r :FzfRg<CR>
noremap 'a :FzfAg<CR>
noremap 'c :FzfCommits<CR>
noremap 'g :FzfGFiles<CR>
noremap 't :FzfTags<CR>
noremap 'w :FzfWindows<CR>
noremap 'y :FzfHistory:<CR>

" File path completion in Insert mode using fzf
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-buffer-line)

" Execute Javascript code with F3
nnoremap <F3> :w<bar>! clear;node %<CR>

" Show undo tree with F5
nnoremap <F5> :MundoToggle<CR>
" Make Y yank till end of line
nnoremap Y y$
" Build cmake project with Ctrl-Shift-B as in Visual Studio. You might want to
" clear this shortcut in KDE's konsole first.
" noremap <C-S-B> :AsyncRun cmake --build build<CR>
" Move to next and previous buffers.
noremap <M-Left> :bp<CR>
noremap <M-Right> :bn<CR>
noremap <leader>d :bd<CR>
noremap <leader>w :w<CR>
noremap <leader>q :q<CR>

" Squeeze blank lines,
function! SqueezeBlankLines()
  %!cat -s
endfunction
nnoremap <leader>s :call SqueezeBlankLines()<cr>

" noremap <M-Up> :tabprevious<CR>
" noremap <M-Down> :tabnext<CR>
" noremap <M-Home> :tabmove 0<CR>
" noremap <M-End> :tabmove<CR>
" '%%' expands to the path of the active buffer. For example when opening a
" file ':e %%'
" Easy Expansion of the Active File Directory
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
" Disable arrow keys in normal mode.
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>
" Silence search highlighting.

command W :execute ':silent w !sudo tee % > /dev/null' | :edit!         " https://www.cyberciti.biz/faq/vim-vi-text-editor-save-file-without-root-permission

" Automatically reload .vimrc on write.
augroup VimReload
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" Show help files in a new tab.
let g:help_in_tabs = 1

"nmap <silent> H  :let g:help_in_tabs = !g:help_in_tabs<CR>

augroup HelpInTabs
  autocmd!
  autocmd BufEnter  *.txt   call HelpInNewTab()
augroup END

function! HelpInNewTab ()
  if &buftype == 'help' && g:help_in_tabs
    execute "normal \<C-W>T"
  endif
endfunction

" Nitrogen
" If this has ft=nitrogen in the modeline
" tell the system that it's actually an erlang filetype
" but override the indentation rules such that it expands tabs to spaces,
" uses tab width of 4 and uses vim's 'smartindent', which works much
" better indentation rules for nitrogen elements.
if has("autocmd")
	" smartindenting will remove leading spaces when typing in a # as the
	" first character, so you don't want that with nitrogen, since *many,
	" many* lines will match that.  So the inoremap below fixes it
	autocmd Filetype nitrogen inoremap # X#
	autocmd FileType nitrogen set filetype=erlang smartindent autoindent expandtab shiftwidth=4 tabstop=4 softtabstop=4 indentexpr=""
endif

" Mouse support
set ttymouse=xterm2
set mouse=a
