set nocompatible

filetype off
execute pathogen#infect()
syntax on
filetype plugin indent on

let mapleader=','
set cinkeys=0{,0},:,0#,!^F

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start
set ruler "Show the cursor position all the time
set showcmd "Display incomplete commands
set incsearch
set smartindent
set autoindent
set tabstop=4
set expandtab
set clipboard+=unnamed
set shiftwidth=4
set shiftround
set nowrap
set softtabstop=4
set hlsearch
set matchpairs+=<:>
set showmatch
set matchtime=3
set t_Co=256
set nu

" Set Visual block mode
set virtualedit=block

" Solorized colors
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Align text using tabular
vnoremap <C-F> <Esc>:'<,'>Tabularize /=<CR>

" Bubble single lines
noremap <silent> <c-up> ddkP <CR>
noremap <silent><c-down> ddp <CR>
" " Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`
xnoremap p pgvy

" Bloack moving
vmap <expr> <LEFT> DVB_Drag('left') 
vmap <expr> <RIGHT> DVB_Drag('right') 
vmap <expr> <DOWN> DVB_Drag('down') 
vmap <expr> <UP> DVB_Drag('up')

" Enabling autocompletion

inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
set dictionary="/usr/dict/words"


"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.

function! Tab_Or_Complete()

    if col('.')>1 && strpart( getline('.'), col('.')-2, 3) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
    endif

endfunction

