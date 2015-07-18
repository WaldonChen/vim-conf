"===============================
" 编辑插件
"===============================

"-----------------------------------------
" Markdown编辑器
" :PandocHtml
" :PandocHtmlOpen
"-----------------------------------------
if v:version > 704
    Plugin 'vim-pandoc/vim-pandoc'
    Plugin 'vim-pandoc/vim-pandoc-syntax'
    let g:snips_author = "Chen Junshi"
    let maplocalleader = ","
endif

"-----------------------------------------
" Riv: Take Notes in rst
"-----------------------------------------
Plugin 'Rykka/riv.vim'

"-----------------------------------------
" iaWriter风格的编辑界面
"
" :Goyo         打开Goyo
" :Goyo [width] 打开/调整Goyo大小
" :Goyo!        关闭Goyo
"-----------------------------------------
Plugin 'junegunn/goyo.vim'

"-----------------------------------------
" 英文拼写检查
"
" \ec       开始拼写检查
" \ee       结束拼写检查
" \ea       选择替换拼写
" \en[p]    移动到下/上一个拼写错误
"-----------------------------------------
"Plugin 'Engspchk'
