jj util completion fish | source

function __complete_jj_all_branches
    jj branch list --all-remotes --no-pager | sed 's/:.*//' | awk '{print $1}'
end

complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from delete" -f -a "(__complete_jj_all_branches)" -d 'Branch to delete'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from rename" -f -a "(__complete_jj_all_branches)" -d 'Branch to rename'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from set" -f -a "(__complete_jj_all_branches)" -d 'Branch to update'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from move" -f -a "(__complete_jj_all_branches)" -d 'Branch to move'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from track" -f -a "(__complete_jj_all_branches)" -d 'Branch to track'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from untrack" -f -a "(__complete_jj_all_branches)" -d 'Branch to untrack'
