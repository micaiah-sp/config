setlocal tabstop=2 shiftwidth=2 expandtab
setlocal spell
syn match Operator "/\*!"
syn match Operator "^\*/$"
syn match Operator "---\?"
syn match Operator "-#"
syn region Special start="\\f[$\[]" end="\\f[$\]]"
syn region String start="`" end="`"
syn region String start="\~\~\~" end="\~\~\~"
syn match Special "\\\(n\|\(me\)\)"
syn match Macro "\\\(\(ref\)\|\(anchor\)\|\(cite\)\) [^ ]\+"
syn match Macro "\\\(\(\(sub\)*section\)\|\(\(main\)\?\(sub\)\?page\)\|\(image\)\|\(snippet\)\) .*"
