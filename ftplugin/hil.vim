setlocal tabstop=4 shiftwidth=4 expandtab
syn keyword Keyword sqrt exp log sin cos tan asin acos atan floor ceil round abs read print println shell
syn keyword Identifier huge newline false true loop repl quit ask exit throw
syn match Constant "\(\(\<\d\+\(\.\d*\)\=\)\|\(\.\d\+\)\)\(\(e[-+]\=\d\+\)\=\)"
syn region Macro start="{" end="}" fold contains=Constant, Keyword, Identifier, Macro
