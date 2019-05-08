""""""""""""""""""""""""""""""""""""""""
" Color Theme
""""""""""""""""""""""""""""""""""""""""
colorscheme kuroi

""""""""""""""""""""""""""""""""""""""""
" Plugins 
" Plugins don't work because of SSL certificate issues.
""""""""""""""""""""""""""""""""""""""""
"call plug#begin('C:/Program Files/Vim/vim81/autoload')
"Plug 'scrooloose/nerdtree'
"call plug#end()

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
"if &diffopt !~# 'internal'
  "set diffexpr=MyDiff()
"endif
"function MyDiff()
  "let opt = '-a --binary '
  "if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  "if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  "let arg1 = v:fname_in
  "if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  "let arg1 = substitute(arg1, '!', '\!', 'g')
  "let arg2 = v:fname_new
  "if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  "let arg2 = substitute(arg2, '!', '\!', 'g')
  "let arg3 = v:fname_out
  "if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  "let arg3 = substitute(arg3, '!', '\!', 'g')
  "if $VIMRUNTIME =~ ' '
    "if &sh =~ '\<cmd'
      "if empty(&shellxquote)
        "let l:shxq_sav = ''
        "set shellxquote&
      "endif
      "let cmd = '"' . $VIMRUNTIME . '\diff"'
    "else
      "let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    "endif
  "else
    "let cmd = $VIMRUNTIME . '\diff'
  "endif
  "let cmd = substitute(cmd, '!', '\!', 'g')
  "silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  "if exists('l:shxq_sav')
    "let &shellxquote=l:shxq_sav
  "endif
"endfunction


let mapleader=','

""""""""""""""""""""""""""""""""""""""""
" Set Vim Features
""""""""""""""""""""""""""""""""""""""""
set autoread
syntax on
set ff=unix
set ignorecase
set lazyredraw
set mouse=a
set nowrap
set number
set showcmd
set smartcase
set wildmenu
let @e=':exec ":norm /public class\<Cr>"'
let @d=':exec ":norm /public class\<CR>wwvey}opublic \<esc>pi(DataRow r)\<esc>/public class\<cr>jjV}y/DataRow\<cr>jp"'
let @k=':execute ":norm gg/public class\<Cr>ww\"1yiw/{\<Cr>jyi{/}\<Cr>Opublic \<C-o>\"1p(DataRow r)\r{\<C-o>p\<C-o>}}\<Esc>kVi{:''<,''>norm A = r.Field<string>(\"\");\<CR>gv:''<,''>norm ^veyf\"p\<CR>/public class\<CR>jjV}k:''<,''>norm A { get; set; }\<CR>gv:''<,''>norm I public string \<CR>"'
""""""""""""""""""""""""""""""""""""""""
" Set Fold Method For VB Files
""""""""""""""""""""""""""""""""""""""""
if &filetype == 'vb'
	set foldenable        " Enables folding
	"set foldlevelstart=10 " Open Most Folds by Default
	set foldmethod=indent " Fold based on indention
	"set foldnestmax=10    " Nested Fold Max
endif


""""""""""""""""""""""""""""""""""""""""
" Custom Mappings
""""""""""""""""""""""""""""""""""""""""
nmap <S-CR> O<Esc>
nmap <CR> o<Esc>
nmap <Leader>o o<Esc>
nmap D dd

""""""""""""""""""""""""""""""""""""""""
" Correct Cursor For Terminal
""""""""""""""""""""""""""""""""""""""""
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
