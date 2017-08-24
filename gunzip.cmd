/*REXX*/
parse arg args
parse source . . Source

helperpath = FileSpec('d', Source) || FileSpec('p', Source)
helper = translate(helperpath, '/', '\') || 'gunzip'
args   = translate(args, '/', '\')
if (args \== '') then helper = helper||' '||args
'@sh 'helper
