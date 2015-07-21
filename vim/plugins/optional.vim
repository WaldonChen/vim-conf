"===============================
" 可选插件
"===============================

"-----------------------------------------
" 源代码查看
"
" sp
"-----------------------------------------
Plugin 'wesleyche/SrcExpl'
nmap <silent> sp :SrcExplToggle<CR>
let g:SrcExpl_winHeight   = 8
let g:SrcExpl_refreshTime = 200
let g:SrcExpl_jumpKey     = "<ENTER>"
let g:SrcExpl_gobackKey   = "<SPACE>"
let g:SrcExpl_pluginList  = [
	\"__Tagbar__",
 	\"_NERD_tree_1",
 	\"Source-Explorer"
\]
let g:SrcExpl_searchLocalDef = 1
let g:SrcExpl_isUpdateTags = 0
let g:SrcExpl_updateTagsCmd  = "ctagsx . 2>/dev/null"
let g:SrcExpl_updateTagsKey  = "<F12>"
let g:SrcExpl_prevDefKey     = "<F3>"
let g:SrcExpl_nextDefKey     = "<F4>"

"-----------------------------------------
" 日历
"
" :Calendar
"-----------------------------------------
Plugin 'mattn/calendar-vim'
let g:calendar_mark = 'right'
let g:calendar_focus_today = 1

"-----------------------------------------
" 矩阵革命
"
" :Matrix
"-----------------------------------------
Plugin 'waldonchen/matrix.vim'

"-----------------------------------------
" 快速浏览和操作buffer
"-----------------------------------------
" Plugin 'fholgado/minibufexpl.vim'
" let g:miniBufExplMapCTabSwitchBufs  = 1
" let g:miniBufExplMapWindowNavVim    = 1	"可以用<C-­h,j,k,l>切换到上下左右的窗口中
" let g:miniBufExplMapWindowNavArrows = 1	"可以用<C­箭头键>切换到上下左右窗口中去

"-----------------------------------------
" 可视化的撤销列表(undolist)
" 提供持久撤销功能，即使关闭了文件也可以
" 看到历史记录
"
" F5    打开撤销列表
"-----------------------------------------
Plugin 'sjl/gundo.vim'
nnoremap <F5> :GundoToggle<CR>
let g:gundo_playback_delay=800

"-----------------------------------------
" VIM中文帮助文档
"-----------------------------------------
" Plugin \"vimcdoc"
" set helplang=cn
