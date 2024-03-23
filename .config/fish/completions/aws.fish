function aws_complete
    set -lx COMP_LINE (commandline -cp)
    set -lx COMP_POINT (commandline -cp | string length)
    set -lx COMP_WORDS (string split " " -- $COMP_LINE)

    set -lx COMP_CWORD (math (contains -i -- (commandline -ct) $COMP_WORDS) - 1)

    aws_completer
end


complete -c aws -f -a "(aws_complete)"
