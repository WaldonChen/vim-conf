"===============================
" 自动补全插件
"===============================

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
Plugin 'AutoComplPop'
autocmd FileType xhtml set omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
Plugin 'L9'
let g:acp_completeoptPreview=1
" 自动关闭预览窗口
" Close automatically the preview window after a completion.
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
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
