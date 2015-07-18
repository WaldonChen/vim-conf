"===============================
" 网页编辑插件
"===============================

"-----------------------------------------
" JS代码格式化插件
"
" <leader>ff
"-----------------------------------------
Plugin 'vim-scripts/jsbeautify'
autocmd FileType javascript noremap <buffer>  <c-f> :call Jsbeautify()<cr>

"-----------------------------------------
" xml
"-----------------------------------------
Plugin 'othree/xml.vim'

"-----------------------------------------
" 删除/增加/修改包围文本的符号
"
" cs"'  ; Change surrounding from " to '
" cst"  ; Change surrounding To "
" ds"   ; Delete surrounding "
" ysiw] ; iw: current word   ] nospace [ w/ space
" yssb  ; entire line
" vbgS
"-----------------------------------------
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

"-----------------------------------------
" 快速输入HTML代码
"
" <C-Y>,    根据前面的模式输入html代码
" <C-Y>/    comment
"
" E             代表HTML标签。
" E#id          代表id属性。
" E.class       代表class属性。
" E[attr=foo]   代表某一个特定属性。
" E{foo}        代表标签包含的内容是foo。
" E>N           代表N是E的子元素。
" E+N           代表N是E的同级元素。
" E^N           代表N是E的上级元素。
" E*N           代表元素E重写N次
" E$*N          代表字符串E自动编号至N, $的个数表示编号位数
"-----------------------------------------
Plugin 'mattn/emmet-vim'
