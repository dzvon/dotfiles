function __xan_complete
    set current (commandline -ct)
    set tokens (commandline -opc)
    set prev $tokens[-1]
    xan compgen xan $current $prev
end

complete -c xan -a '(__xan_complete)'
