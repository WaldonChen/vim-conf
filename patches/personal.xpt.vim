" Move me to your own fptlugin/_common and config your personal information.
"
" Here is the place to set personal preferences; "priority=personal" is the
" highest which overrides any other XPTvar setting.
"
" You can also set personal variables with 'g:xptemplate_vars' in your .vimrc.
XPTemplate priority=personal

let s:f = g:XPTfuncs()

" XPTvar $author       you have not yet set $author variable
" XPTvar $email        you have not yet set $email variable
XPTvar $author      CHEN Junshi
XPTvar $email       waldonchen@gmail.com
XPTvar $SParg       ''
XPTvar $BRfun       \n

fun! s:f.c_fun_body_indent()
    if self[ '$BRfun' ] == "\n"
        return self.ResetIndent( -&shiftwidth, "\n")
    else
        return " "
    endif
endfunction

"XPT yoursnippet " tips here

XPT main hint=main\ (argc,\ argv)
int main(`$SParg^int argc,`$SPop^char **argv`$SParg^)`$BRfun^{
    `cursor^
    return 0;
}

XPT fun wrap=curosr hint=func..\ (\ ..\ )\ {...
`int^`c_fun_body_indent()^`name^(`$SParg`param?`$SParg^)`$BRfun^{
    `cursor^
}
