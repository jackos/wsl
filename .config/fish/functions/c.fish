function c
    # Set query to command input
    set -l query (commandline)
    # if there is text in query
    if test -n $query
        # set --query to command input
        set search_text "$query"
    end

    # Run the command and read the line
    ag a $search_text /home/jacko/vimwiki | peco | read line
    set mdfile (string match -r ".*md" $line)
    if test $line
        commandline "code $mdfile"
        commandline -f execute
    end
end
