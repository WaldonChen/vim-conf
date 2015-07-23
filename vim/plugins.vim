"===============================
" Bundles
"===============================

" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..

if has('unix')
    let s:vim_config_home="~/.vim/"
elseif has('win32') || has('win16')
    let s:vim_config_home="$VIMRUNTIME/../vimfiles/"
endif

"-----------------------------------------
" Let Vundle manage Vundle, required!
"-----------------------------------------
filetype off
" set rtp+=~/.vim/bundle/Vundle.vim/
let &rtp.=',' . s:vim_config_home . "bundle/Vundle.vim/"
call vundle#rc()
Plugin 'gmarik/Vundle.vim'

" 'base', 'general', 'complete'
" 'html', 'syntax', 'writing'
" 'python', 'lisp', 'optional'
let s:plugins=['basic', 'general', 'complete', 'html']

function! s:add_plugins(plugins)
python << endpython
import vim
plugins = vim.eval("a:plugins")
vim_config_home = vim.eval("s:vim_config_home")
for p in plugins:
    vim.command("source %s/plugins/%s.vim" % (vim_config_home, p))
endpython
endfunction

if has('python')
    call s:add_plugins(s:plugins)
else
    source ~/.vim/plugins/basic.vim
    source ~/.vim/plugins/general.vim
    " source ~/.vim/plugins/optional.vim
    " source ~/.vim/plugins/complete.vim
    " source ~/.vim/plugins/html.vim
    " source ~/.vim/plugins/lisp.vim
    " source ~/.vim/plugins/python.vim
    " source ~/.vim/plugins/syntax.vim
    " source ~/.vim/plugins/writing.vim
endif
