"===============================
" 基础编程插件
"===============================

"-----------------------------------------
" 列出文件中定义的全局变量，函数，类等信息
"
" tl    弹出/关闭tagbar窗口
"-----------------------------------------
Plugin 'Tagbar'
let g:tagbar_autoclose	= 1
let g:tagbar_compact	= 1
map <silent> tl :TagbarToggle<CR>

"-----------------------------------------
" 在vim的编辑窗口树状显示文件目录
"
" wm    打开/关闭树状目录
"-----------------------------------------
Plugin 'scrooloose/nerdtree'
" 从NERDTree中打开文件后关闭窗口
let g:NERDTreeQuitOnOpen = 1
nmap wm :NERDTreeToggle<CR>

"-----------------------------------------
" 快速代码注释
"
" <leader>cn    增加单行注释
" <leader>cm    增加多行注释
" <leader>cs    增加漂亮的多行注释
" <leader>cu    取消注释
" <leader>ca    注释风格转换
"-----------------------------------------
Plugin 'scrooloose/nerdcommenter'
let NERDSpaceDelims = 1

"-----------------------------------------
" 让代码更加易于纵向排版，以=或,符号对齐
"
" :Tab /=       按=对齐
" :Tab /:\zs    按:后的空格对齐
"-----------------------------------------
Plugin 'godlygeek/tabular'
inoremap <silent> <Bar>  <Bar><Esc>:call <SID>align()<CR>a
" 绘制文本表格时，自动对齐
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

"-----------------------------------------
" 文件查找
"
" Ctrl+p
"-----------------------------------------
Plugin 'kien/ctrlp.vim'
noremap <C-w><C-u> :CtrlPMRU<CR>
noremap <C-w>u :CtrlMRU<CR>
let g:ctrlp_custom_ignore         = '\.git$\|\.hg$\|\.svn$\|.rvm$'
let g:ctrlp_working_path_mode     = 0
let g:ctrlp_match_window_bottom   = 1
let g:ctrlp_max_height            = 15
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_mruf_max              = 500
let g:ctrlp_follow_symlinks       = 1

"-----------------------------------------
" C/C++语法检查
"-----------------------------------------
Plugin 'Syntastic'
let g:syntastic_ignore_files = [".*\.py$"]
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

"-----------------------------------------
" 简单配置就可以按照自己的风格快速输入大段代码
"
" Ctrl+\
"-----------------------------------------
Plugin 'drmingdrmer/xptemplate'
" let g:xptemplate_vars = \"$author='CHEN Junshi'&$email=waldonchen@gmail.com"


"-----------------------------------------
" Doxygen风格的代码注释
"
" Dox           增加函数/类等的注释
" DoxLic        增加License注释
" DoxAuthor     增加文件的注释
" DoxUndoc
" DoxBlock
"-----------------------------------------
Plugin 'DoxygenToolkit.vim'
let g:DoxygenToolkit_authorName = "Junshi Chen"
let g:DoxygenToolkit_licenseTag = "Copyright " . strftime("%Y") . " Junshi Chen\<enter>\<enter>"
    \ . "Licensed under the Apache License, Version 2.0 (the \"License\");\<enter>"
    \ . "you may not use this file except in compliance with the License.\<enter>"
    \ . "You may obtain a copy of the License at\<enter>\<enter>"
	\ . "\<tab>\<tab>http://www.apache.org/licenses/LICENSE-2.0\<enter>\<enter>"
	\ . "Unless required by applicable law or agreed to in writing, software\<enter>"
	\ . "distributed under the License is distributed on an \"AS IS\" BASIS,\<enter>"
	\ . "WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\<enter>"
	\ . "See the License for the specific language governing permissions and\<enter>"
	\ . "limitations under the License."

let g:DoxygenToolkit_briefTag_pre = "@brief "

"-----------------------------------------
" 多行编辑
"
" <C-n>     开始进入V模式并选中光标下的单词
"           选择下一个单词
" <C-p>     往回选一个单词
" <C-x>     跳过下一个相同单词
"-----------------------------------------
Plugin 'terryma/vim-multiple-cursors'
"let g:multi_cursor_next_key='<C-m>'
"let g:multi_cursor_prev_key='<C-m>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'

"-----------------------------------------
" Git插件
"
" Gstatus, Gcommit, Gmerge, Gpull, Glog
" Gwrite, Gdiff, Gmove, Gremove
"-----------------------------------------
Plugin 'tpope/vim-fugitive'


