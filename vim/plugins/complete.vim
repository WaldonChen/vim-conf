"===============================
" 自动补全插件
"===============================

"-----------------------------------------
" NeoComplete自动补全插件
"-----------------------------------------
Plugin 'Shougo/neocomplete.vim'
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"-----------------------------------------
" C/C++自动补全插件
"-----------------------------------------
" Plugin 'OmniCppComplete'
" set completeopt+=longest,menu,menuone
" let OmniCpp_MayCompleteScope         = 1
" let OmniCpp_SelectFirstItem          = 2
" let OmniCpp_NamespaceSearch          = 2
" let OmniCpp_ShowPrototypeInAbbr      = 1
" let OmniCpp_DisplayMode              = 1
" let OmniCpp_ShowScopeInAbbr          = 0
" let OmniCpp_ShowAccess               = 1
" let OmniCpp_DefaultNamespace = ["std","_GLIBCXX_STD"]

" map <C-F12> :!ctags -R --c-kinds   = +p --c++-kinds         = +p
"	\--fields                        = +iaSKz --extra         = +q .<CR>
" map <C-F12>	:!ctagsx<cR>

"-----------------------------------------
" 自动弹出补全
"-----------------------------------------
" Plugin 'AutoComplPop'
" autocmd FileType xhtml set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
" Plugin 'L9'
" let g:acp_completeoptPreview=1
" " 自动关闭预览窗口
" " Close automatically the preview window after a completion.
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" 回车即寻中当前项
" inoremap <expr> <CR> pumvisible() ? \"\<C-y>" : \"\<CR>"

"-----------------------------------------
" YouCompleteMe补全插件
"-----------------------------------------
" Plugin 'Valloric/YouCompleteMe'
" nmap <F4> :YcmDiags<CR>
" let g:ycm_error_symbol = '>>'
" let g:ycm_warning_symbol = '>*'
" nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
" nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
" nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
" let g:ycm_min_num_of_chars_for_completion = 2
" let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" " let g:ycm_confirm_extra_conf = 1
" let g:ycm_extra_conf_globlist = ['~/*'] " ['!~/*']
