function _autopair_tab
    commandline --paging-mode && down-or-search && return

    string match --quiet --regex -- '\$\S*"$' (commandline --current-token) &&
        commandline --function end-of-line backward-delete-char
    commandline --function complete
end
