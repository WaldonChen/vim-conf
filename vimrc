"===========================================
" General
"===========================================
" Let VIM not compatible with VI
set nocompatible

" How many lines of history VIM has to remember, default is 20
set history=100

" Set to auto read when a file is changed from the outside
" set autoread

" Map <leader> to ','
let mapleader=','

" Map jj to <ESC> in insert mode
imap jj <esc>

" Fast saving
nmap <silent> ;w :w<CR>

"===========================================
" VIM user interface
"===========================================
" Set 7 lines to the cursor when moving vertically using j/k
set so=7

" Tune on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Always show current position on right-bottom
" set ruler

" Height of the command bar
" set cmdheight=1

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=b,s,<,>,[,] " ,h,l

" search {
set ignorecase  " Ignore case when searching
set smartcase   " When searching try to be smart about cases
set hlsearch    " Hightlight search results
set incsearch   " Makes search act like search in modern browsers
" }

" Don't redraw while executing macros, registers and other cmds
" that have not been typed.
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" Status line {     <== vim-powerline instead
set laststatus=2
" set ruler
" set statusline=[%F]%y%r%m%*%=
" set statusline+=[%{&ff=='unix'?'\\n':(&ff=='mac'?'\\r':'\\r\\n')}]
" Encoding
" set statusline+=%{SyntasticStatuslineFlag()}[%{&fenc!=''?&fenc:&fenc}]
" set statusline+=[0x%B/%03b]
" Current date time, update when cursor move
" set statusline+=[%{strftime(\"%d-%m-%Y\ %H:%M\")}]
" Current working directory
" set statusline+=[%r%{getcwd()}%h]
" set statusline+=[Line:%l/%L,Column:%c][%p%%]
" set statusline+=[L:%l/%L,Col:%c][%p%%]
" }

"===========================================
" Colors, Encoding and Fonts
"===========================================
" Enable syntax hightlighting
" syntax enable <== Bundle

" Sets color scheme
colo desert
set colorcolumn=81
set t_Co=256
set cursorline

if has("gui_gtk2")
    set guifont=Bitstream\ Vera\ Sans\ Mono\ 11,Fixed\ 11
    set guifontwide=Microsoft\ Yahei\ 11,WenQuanYi\ Zen\ Hei\ 11
endif

" Encoding settings {
set fileencodings=utf-8,gb18030,gbk,big5,latin1
set termencoding=utf-8,gbk
set encoding=utf-8
" }

"===========================================
" Text, tab and indent related
"===========================================
" tab settings {
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
autocmd FileType makefile,html,xml,php set noexpandtab
autocmd FileType ruby,html,xml,xhtml,php set ts=2 | set sw=2 | set sts=2
" }

" indent settings {
set autoindent
set smartindent
set cindent
" set wrap
" }

" Use <F3> to toggle between paste mode
set pastetoggle=<F3>

" Folding settings {
set foldmethod=syntax
set foldlevel=90
" }

" line number settings {
set nu
set nuw=5
set isk+=-
" }

"===========================================
" Moving around, tabs, windows and buffers
"===========================================
map j gj
map k gk

" smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Tab page {
" useful mappings for managing tabs
" {count}gt		goto tab page {count}
" map <leader>tn :tabnew<cr>
" map <leader>tnn :tabnew<space>
" map <leader>to :tabonly<cr>
" map <leader>tc :tabclose<cr>
" map <leader>tm :tabmove<space>
" map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
" " goto previous tab
" map <leader>tp :tabp<space>
" " goto next tab
" map <leader>tg :tabn<space>
"}

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
	set switchbuf=useopen,usetab,newtab
	set stal=2
catch
endtry

"===========================================
" Editing mappings
"===========================================
" Move a line of text using ALT+[jk]
" nmap <M-j> mz:m+<cr>`z
" nmap <M-k> mz:m-2<cr>`z
" vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
" vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" ctags settings {
set tags=tags;
set tags+=~/.vim/tags/cpp.tags
" }

if has('unix')
    source ~/.vim/plugins.vim
elseif has('win32') || has('win16')
    source $VIMRUNTIME/../vimfiles/plugins.vim
endif

filetype plugin indent on " required!
syntax on

" Return to last edit position when opening files
autocmd BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\	exe "normal! g`\"" |
			\ endif
" Remember info about open buffers on close
set viminfo^=%

" When .vimrc is modified, reload it
if has('unix')
    autocmd! bufwritepost .vimrc source ~/.vimrc
elseif has('win32') || has('win16')
    autocmd! bufwritepost .vimrc source $VIMRUNTIME/../_vimrc
endif

"===============================
" Custom
"===============================
" Google protobuf
augroup filetype
    au! VimEnter,BufRead,BufNewFile *.proto setfiletype proto
    au! VimEnter,BufRead,BufNewFile *.cu setfiletype cuda
augroup end

" Delete trailing white space on save
func! DeleteTrailingWS()
    " Save the current search and cursor position
    let _s = @/
	let l = line('.')
	let c = col('.')

    " Strip the whitespace
	silent! %s/\s\+$//ge

    " Restore the saved search and cursor position
    let @/ = _s
	call cursor(l, c)
endfunc
nmap <silent> ;m :call DeleteTrailingWS()<CR>
" autocmd BufWrite *.py :call DeleteTrailingWS()

" Replace the selected text in visual mode
vnoremap <leader>s y:%s/<C-R>=escape(@", '\\/.*$^~[]')<CR>/

" 查词典
" nmap <leader>f :!sdcv -n <C-R>=expand("<cword>")<CR>\|less<CR>
" presentations of '|' character: <Bar>, \|, ^V|

function! ToggleSyntax()
	if exists("g:syntax_on")
		syntax off
	else
		syntax enable
	endif
endfunction
" nmap: normal-mode key mapping
nmap <silent> <leader>S :call ToggleSyntax()<CR>

imap <silent> <C-D><C-D> <C-R>=strftime("%b%e %Y")<CR>
imap <silent> <C-T><C-T> <C-R>=strftime("%l:%M%p")<CR>
imap <silent> <C-C><C-C> <C-R>=string(eval(input("Calculate: ")))<CR>

highlight ColorColumn ctermbg=235 guibg=lightgrey

"===================================
"=            VIM TIPS             =
"===================================
"S      ; Replace whole line
"
"dos2unix dos_file unix_file
"doscp dos_file unix_file
"       ; remove ^M
"
"gq}    ; Format paragraph
"ggVGgq ; Reformaat entire file

"[I     ; shwo lines matching work under cursor
"g/xxx/#    ; search and display with line numbers
":g/<pattern>/z#.5|echo "=========="  : display beautifully

" Split Window
" <c-w>=
" <c-w>-
" <c-w>|
" <c-w>h/j/k/l      Activate left/down/up/right window
" <c-w>H/J/K/L      Move window to left/down/up/right

" Buffer
" :ls       list buffer in VIM
" :b <num>  goto buffer <num>
" :bn/p     next/previous buffer
" :b#       last buffer
" :bd <num> delete buffer <num>

" 查看当前编辑的C/C++源文件所有include文件路径
" :checkpath

" 如何利用宏命令,生成数字顺序列表
" qa -> Y -> p -> <c-a> -> q -> @a

" 折叠
" zf            Flod
" zo, zc        Open/Close
" zM, zR        Close/Open all fold
" za            Folding open or close

" Search current word
" */#

" vim中paste剪贴板中的数据如何让它不缩进,保持原格式
" :set paste

" 加密保存
" :X

" 请求root权限写入文件
" :w !sudo tee %

" 剪贴板
" <c-;>

" 将shell命令的结果插入到当前行的下一行
" :r !command
" e.g.   :r !date +%Y.%2m.%2d

" :62,72 !sort  将62到72行内容排序
" :62 !tr [a-z] [A-Z]，将62行的小写字母转为大写字母
" :. w !bash，将当前行的内容作为bash命令来执行

