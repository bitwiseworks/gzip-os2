/*REXX*/
parse arg args
script = 'gunzip'
args   = translate(args, '/', '\')
if (args \== '') then script = script||' '||args
'@sh -c '''script''''
