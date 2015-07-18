"===============================
" LISP编程插件
"===============================

"-----------------------------------------
" Slime of VIM
"
" Plugin 'vim-scripts/slimv.vim'
"-----------------------------------------
Plugin 'kovisoft/slimv'
let g:slimv_leader = ';'
let g:slimv_python = 'python2'
let g:slimv_impl = 'sbcl'
if has("unix")
    let g:slimv_swank_cmd = "! xterm -e sbcl --load ~/.vim/bundle/slimv/slime/start-swank.lisp &"
    let g:slimv_clhs_root = "file:///usr/local/lib/LispWorksPersonal/lib/6-1-0-0/manual/online/CLHS/Body/"
elseif has("win32") || has("win16")
    let g:slimv_swank_cmd = '!start "D:\Program Files (x86)\Steel Bank Common Lisp\1.2.1\sbcl.exe"
                \ --load "D:\\lispbox-1.0\\slime-2014\\start-swank.lisp"'
endif
