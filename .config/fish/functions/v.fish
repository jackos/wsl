function v
    # Set query to command input
    set -l query (commandline)
    # if there is text in query
    if test -n $query
        # set --query to command input
        set search_text "$query"
    end
    # Run the command and read the line
    ag a $search_text /home/jacko/vimwiki | peco | read line
    # put the filename into a variable
    set mdfile (string match -r ".*md" $line)
    # put the line name into a variable
    set linenumber (string sub -s 2 -e -1 (string match -r ":.*:" $line))
    if test $line
        # open vim at the desired line number
        commandline "vim +$linenumber $mdfile"
        commandline -f execute
    end
end
