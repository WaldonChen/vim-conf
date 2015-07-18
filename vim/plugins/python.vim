"===============================
" Python编程插件
"===============================

"-----------------------------------------
" Python自动补全
"-----------------------------------------
Plugin 'davidhalter/jedi-vim'
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command    = "K"
let g:jedi#usages_command           = "<leader>n"
let g:jedi#completions_command      = "<C-Space>"
let g:jedi#rename_command           = "<leader>r"
let g:jedi#show_call_signatures     = "1"
let g:jedi#popup_on_dot             = 0
let g:jedi#popup_select_first       = 0

"-----------------------------------------
" Python语法检查
"-----------------------------------------
Plugin 'orenhe/pylint.vim'

