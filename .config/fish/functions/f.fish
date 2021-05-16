function f
    # Set query to command input
    set -l query (commandline)
    # if there is text in query
    if test -n $query
        # set --query to command input
        set peco_flags --query "$query"
    end

    # Run the command and read the line
    ag -l | peco $peco_flags | read line
    if test $line
        commandline "$EDITOR $line"
        commandline -f execute
    end
end
