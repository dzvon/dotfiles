complete -c jj -n "__fish_use_subcommand" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_use_subcommand" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_use_subcommand" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_use_subcommand" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_use_subcommand" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_use_subcommand" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_use_subcommand" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_use_subcommand" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_use_subcommand" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_use_subcommand" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_use_subcommand" -s V -l version -d 'Print version'
complete -c jj -n "__fish_use_subcommand" -f -a "abandon" -d 'Abandon a revision'
complete -c jj -n "__fish_use_subcommand" -f -a "backout" -d 'Apply the reverse of a revision on top of another revision'
complete -c jj -n "__fish_use_subcommand" -f -a "branch" -d 'Manage branches'
complete -c jj -n "__fish_use_subcommand" -f -a "cat" -d 'Print contents of files in a revision'
complete -c jj -n "__fish_use_subcommand" -f -a "checkout" -d 'Create a new, empty change and edit it in the working copy (DEPRECATED, use `jj new`)'
complete -c jj -n "__fish_use_subcommand" -f -a "chmod" -d 'Sets or removes the executable bit for paths in the repo'
complete -c jj -n "__fish_use_subcommand" -f -a "commit" -d 'Update the description and create a new change on top'
complete -c jj -n "__fish_use_subcommand" -f -a "ci" -d 'Update the description and create a new change on top'
complete -c jj -n "__fish_use_subcommand" -f -a "config" -d 'Manage config options'
complete -c jj -n "__fish_use_subcommand" -f -a "debug" -d 'Low-level commands not intended for users'
complete -c jj -n "__fish_use_subcommand" -f -a "describe" -d 'Update the change description or other metadata'
complete -c jj -n "__fish_use_subcommand" -f -a "desc" -d 'Update the change description or other metadata'
complete -c jj -n "__fish_use_subcommand" -f -a "diff" -d 'Compare file contents between two revisions'
complete -c jj -n "__fish_use_subcommand" -f -a "diffedit" -d 'Touch up the content changes in a revision with a diff editor'
complete -c jj -n "__fish_use_subcommand" -f -a "duplicate" -d 'Create a new change with the same content as an existing one'
complete -c jj -n "__fish_use_subcommand" -f -a "edit" -d 'Sets the specified revision as the working-copy revision'
complete -c jj -n "__fish_use_subcommand" -f -a "file" -d 'File operations'
complete -c jj -n "__fish_use_subcommand" -f -a "files" -d 'List files in a revision (DEPRECATED use `jj file list`)'
complete -c jj -n "__fish_use_subcommand" -f -a "fix" -d 'Update files with formatting fixes or other changes'
complete -c jj -n "__fish_use_subcommand" -f -a "git" -d 'Commands for working with Git remotes and the underlying Git repo'
complete -c jj -n "__fish_use_subcommand" -f -a "init" -d 'Create a new repo in the given directory'
complete -c jj -n "__fish_use_subcommand" -f -a "interdiff" -d 'Compare the changes of two commits'
complete -c jj -n "__fish_use_subcommand" -f -a "log" -d 'Show revision history'
complete -c jj -n "__fish_use_subcommand" -f -a "merge" -d 'Merge work from multiple branches (DEPRECATED, use `jj new`)'
complete -c jj -n "__fish_use_subcommand" -f -a "move" -d 'Move changes from one revision into another (DEPRECATED, use `jj squash`)'
complete -c jj -n "__fish_use_subcommand" -f -a "new" -d 'Create a new, empty change and (by default) edit it in the working copy'
complete -c jj -n "__fish_use_subcommand" -f -a "next" -d 'Move the working-copy commit to the child revision'
complete -c jj -n "__fish_use_subcommand" -f -a "obslog" -d 'Show how a change has evolved over time'
complete -c jj -n "__fish_use_subcommand" -f -a "operation" -d 'Commands for working with the operation log'
complete -c jj -n "__fish_use_subcommand" -f -a "op" -d 'Commands for working with the operation log'
complete -c jj -n "__fish_use_subcommand" -f -a "parallelize" -d 'Parallelize revisions by making them siblings'
complete -c jj -n "__fish_use_subcommand" -f -a "prev" -d 'Change the working copy revision relative to the parent revision'
complete -c jj -n "__fish_use_subcommand" -f -a "rebase" -d 'Move revisions to different parent(s)'
complete -c jj -n "__fish_use_subcommand" -f -a "resolve" -d 'Resolve a conflicted file with an external merge tool'
complete -c jj -n "__fish_use_subcommand" -f -a "restore" -d 'Restore paths from another revision'
complete -c jj -n "__fish_use_subcommand" -f -a "revert" -d 'A dummy command that accepts any arguments'
complete -c jj -n "__fish_use_subcommand" -f -a "root" -d 'Show the current workspace root directory'
complete -c jj -n "__fish_use_subcommand" -f -a "run" -d 'Run a command across a set of revisions.'
complete -c jj -n "__fish_use_subcommand" -f -a "show" -d 'Show commit description and changes in a revision'
complete -c jj -n "__fish_use_subcommand" -f -a "sparse" -d 'Manage which paths from the working-copy commit are present in the working copy'
complete -c jj -n "__fish_use_subcommand" -f -a "split" -d 'Split a revision in two'
complete -c jj -n "__fish_use_subcommand" -f -a "squash" -d 'Move changes from a revision into another revision'
complete -c jj -n "__fish_use_subcommand" -f -a "status" -d 'Show high-level repo status'
complete -c jj -n "__fish_use_subcommand" -f -a "st" -d 'Show high-level repo status'
complete -c jj -n "__fish_use_subcommand" -f -a "tag" -d 'Manage tags'
complete -c jj -n "__fish_use_subcommand" -f -a "util" -d 'Infrequently used commands such as for generating shell completions'
complete -c jj -n "__fish_use_subcommand" -f -a "undo" -d 'Undo an operation (shortcut for `jj op undo`)'
complete -c jj -n "__fish_use_subcommand" -f -a "unsquash" -d 'Move changes from a revision\'s parent into the revision'
complete -c jj -n "__fish_use_subcommand" -f -a "untrack" -d 'Stop tracking specified paths in the working copy'
complete -c jj -n "__fish_use_subcommand" -f -a "version" -d 'Display version information'
complete -c jj -n "__fish_use_subcommand" -f -a "workspace" -d 'Commands for working with workspaces'
complete -c jj -n "__fish_use_subcommand" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from abandon" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from abandon" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from abandon" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from abandon" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from abandon" -s s -l summary -d 'Do not print every abandoned commit on a separate line'
complete -c jj -n "__fish_seen_subcommand_from abandon" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from abandon" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from abandon" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from abandon" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from abandon" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from abandon" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from abandon" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from backout" -s r -l revision -d 'The revision to apply the reverse of' -r
complete -c jj -n "__fish_seen_subcommand_from backout" -s d -l destination -d 'The revision to apply the reverse changes on top of' -r
complete -c jj -n "__fish_seen_subcommand_from backout" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from backout" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from backout" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from backout" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from backout" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from backout" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from backout" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from backout" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from backout" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from backout" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "create" -d 'Create a new branch'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "c" -d 'Create a new branch'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "delete" -d 'Delete an existing branch and propagate the deletion to remotes on the next push'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "d" -d 'Delete an existing branch and propagate the deletion to remotes on the next push'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "forget" -d 'Forget everything about a branch, including its local and remote targets'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "f" -d 'Forget everything about a branch, including its local and remote targets'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "list" -d 'List branches and their targets'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "l" -d 'List branches and their targets'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "move" -d 'Move existing branches to target revision'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "m" -d 'Move existing branches to target revision'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "rename" -d 'Rename `old` branch name to `new` branch name'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "r" -d 'Rename `old` branch name to `new` branch name'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "set" -d 'Create or update a branch to point to a certain commit'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "s" -d 'Create or update a branch to point to a certain commit'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "track" -d 'Start tracking given remote branches'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "t" -d 'Start tracking given remote branches'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "untrack" -d 'Stop tracking given remote branches'
complete -c jj -n "__fish_seen_subcommand_from branch; and not __fish_seen_subcommand_from create c delete d forget f list l move m rename r set s track t untrack help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from branch create" -s r -l revision -d 'The branch\'s target revision' -r
complete -c jj -n "__fish_seen_subcommand_from branch create" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch create" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch create" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch create" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch create" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch create" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch create" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch create" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch create" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch create" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch c" -s r -l revision -d 'The branch\'s target revision' -r
complete -c jj -n "__fish_seen_subcommand_from branch c" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch c" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch c" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch c" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch c" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch c" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch c" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch c" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch c" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch c" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch delete" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch delete" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch delete" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch delete" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch delete" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch delete" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch delete" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch delete" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch delete" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch delete" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch d" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch d" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch d" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch d" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch d" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch d" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch d" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch d" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch d" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch d" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch forget" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch forget" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch forget" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch forget" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch forget" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch forget" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch forget" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch forget" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch forget" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch forget" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch f" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch f" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch f" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch f" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch f" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch f" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch f" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch f" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch f" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch f" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch list" -s r -l revisions -d 'Show branches whose local targets are in the given revisions' -r
complete -c jj -n "__fish_seen_subcommand_from branch list" -s T -l template -d 'Render each branch using the given template' -r
complete -c jj -n "__fish_seen_subcommand_from branch list" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch list" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch list" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch list" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch list" -s a -l all-remotes -d 'Show all tracking and non-tracking remote branches including the ones whose targets are synchronized with the local branches'
complete -c jj -n "__fish_seen_subcommand_from branch list" -s t -l tracked -d 'Show remote tracked branches only. Omits local Git-tracking branches by default'
complete -c jj -n "__fish_seen_subcommand_from branch list" -s c -l conflicted -d 'Show conflicted branches only'
complete -c jj -n "__fish_seen_subcommand_from branch list" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch list" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch list" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch list" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch list" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch list" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch l" -s r -l revisions -d 'Show branches whose local targets are in the given revisions' -r
complete -c jj -n "__fish_seen_subcommand_from branch l" -s T -l template -d 'Render each branch using the given template' -r
complete -c jj -n "__fish_seen_subcommand_from branch l" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch l" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch l" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch l" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch l" -s a -l all-remotes -d 'Show all tracking and non-tracking remote branches including the ones whose targets are synchronized with the local branches'
complete -c jj -n "__fish_seen_subcommand_from branch l" -s t -l tracked -d 'Show remote tracked branches only. Omits local Git-tracking branches by default'
complete -c jj -n "__fish_seen_subcommand_from branch l" -s c -l conflicted -d 'Show conflicted branches only'
complete -c jj -n "__fish_seen_subcommand_from branch l" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch l" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch l" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch l" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch l" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch l" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch move" -l from -d 'Move branches from the given revisions' -r
complete -c jj -n "__fish_seen_subcommand_from branch move" -l to -d 'Move branches to this revision' -r
complete -c jj -n "__fish_seen_subcommand_from branch move" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch move" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch move" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch move" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch move" -s B -l allow-backwards -d 'Allow moving branches backwards or sideways'
complete -c jj -n "__fish_seen_subcommand_from branch move" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch move" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch move" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch move" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch move" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch move" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch m" -l from -d 'Move branches from the given revisions' -r
complete -c jj -n "__fish_seen_subcommand_from branch m" -l to -d 'Move branches to this revision' -r
complete -c jj -n "__fish_seen_subcommand_from branch m" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch m" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch m" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch m" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch m" -s B -l allow-backwards -d 'Allow moving branches backwards or sideways'
complete -c jj -n "__fish_seen_subcommand_from branch m" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch m" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch m" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch m" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch m" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch m" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch rename" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch rename" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch rename" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch rename" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch rename" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch rename" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch rename" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch rename" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch rename" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch rename" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch r" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch r" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch r" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch r" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch r" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch r" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch r" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch r" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch r" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch r" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch set" -s r -l revision -d 'The branch\'s target revision' -r
complete -c jj -n "__fish_seen_subcommand_from branch set" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch set" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch set" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch set" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch set" -s B -l allow-backwards -d 'Allow moving the branch backwards or sideways'
complete -c jj -n "__fish_seen_subcommand_from branch set" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch set" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch set" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch set" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch set" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch set" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch s" -s r -l revision -d 'The branch\'s target revision' -r
complete -c jj -n "__fish_seen_subcommand_from branch s" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch s" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch s" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch s" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch s" -s B -l allow-backwards -d 'Allow moving the branch backwards or sideways'
complete -c jj -n "__fish_seen_subcommand_from branch s" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch s" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch s" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch s" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch s" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch s" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch track" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch track" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch track" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch track" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch track" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch track" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch track" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch track" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch track" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch track" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch t" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch t" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch t" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch t" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch t" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch t" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch t" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch t" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch t" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch t" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch untrack" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from branch untrack" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from branch untrack" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from branch untrack" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from branch untrack" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from branch untrack" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from branch untrack" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from branch untrack" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from branch untrack" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from branch untrack" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from branch help; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack help" -f -a "create" -d 'Create a new branch'
complete -c jj -n "__fish_seen_subcommand_from branch help; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack help" -f -a "delete" -d 'Delete an existing branch and propagate the deletion to remotes on the next push'
complete -c jj -n "__fish_seen_subcommand_from branch help; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack help" -f -a "forget" -d 'Forget everything about a branch, including its local and remote targets'
complete -c jj -n "__fish_seen_subcommand_from branch help; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack help" -f -a "list" -d 'List branches and their targets'
complete -c jj -n "__fish_seen_subcommand_from branch help; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack help" -f -a "move" -d 'Move existing branches to target revision'
complete -c jj -n "__fish_seen_subcommand_from branch help; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack help" -f -a "rename" -d 'Rename `old` branch name to `new` branch name'
complete -c jj -n "__fish_seen_subcommand_from branch help; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack help" -f -a "set" -d 'Create or update a branch to point to a certain commit'
complete -c jj -n "__fish_seen_subcommand_from branch help; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack help" -f -a "track" -d 'Start tracking given remote branches'
complete -c jj -n "__fish_seen_subcommand_from branch help; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack help" -f -a "untrack" -d 'Stop tracking given remote branches'
complete -c jj -n "__fish_seen_subcommand_from branch help; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from cat" -s r -l revision -d 'The revision to get the file contents from' -r
complete -c jj -n "__fish_seen_subcommand_from cat" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from cat" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from cat" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from cat" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from cat" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from cat" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from cat" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from cat" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from cat" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from cat" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from checkout" -s m -l message -d 'The change description to use' -r
complete -c jj -n "__fish_seen_subcommand_from checkout" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from checkout" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from checkout" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from checkout" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from checkout" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from checkout" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from checkout" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from checkout" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from checkout" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from checkout" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from checkout" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from chmod" -s r -l revision -d 'The revision to update' -r
complete -c jj -n "__fish_seen_subcommand_from chmod" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from chmod" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from chmod" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from chmod" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from chmod" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from chmod" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from chmod" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from chmod" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from chmod" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from chmod" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from commit" -l tool -d 'Specify diff editor to be used (implies --interactive)' -r
complete -c jj -n "__fish_seen_subcommand_from commit" -s m -l message -d 'The change description to use (don\'t open editor)' -r
complete -c jj -n "__fish_seen_subcommand_from commit" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from commit" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from commit" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from commit" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from commit" -s i -l interactive -d 'Interactively choose which changes to include in the first commit'
complete -c jj -n "__fish_seen_subcommand_from commit" -l reset-author -d 'Reset the author to the configured user'
complete -c jj -n "__fish_seen_subcommand_from commit" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from commit" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from commit" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from commit" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from commit" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from commit" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from ci" -l tool -d 'Specify diff editor to be used (implies --interactive)' -r
complete -c jj -n "__fish_seen_subcommand_from ci" -s m -l message -d 'The change description to use (don\'t open editor)' -r
complete -c jj -n "__fish_seen_subcommand_from ci" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from ci" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from ci" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from ci" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from ci" -s i -l interactive -d 'Interactively choose which changes to include in the first commit'
complete -c jj -n "__fish_seen_subcommand_from ci" -l reset-author -d 'Reset the author to the configured user'
complete -c jj -n "__fish_seen_subcommand_from ci" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from ci" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from ci" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from ci" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from ci" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from ci" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -f -a "edit" -d 'Start an editor on a jj config file'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -f -a "e" -d 'Start an editor on a jj config file'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -f -a "get" -d 'Get the value of a given config option.'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -f -a "g" -d 'Get the value of a given config option.'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -f -a "list" -d 'List variables set in config file, along with their values'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -f -a "l" -d 'List variables set in config file, along with their values'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -f -a "path" -d 'Print the path to the config file'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -f -a "p" -d 'Print the path to the config file'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -f -a "set" -d 'Update config file to set the given option to a given value'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -f -a "s" -d 'Update config file to set the given option to a given value'
complete -c jj -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from edit e get g list l path p set s help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from config edit" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from config edit" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from config edit" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from config edit" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from config edit" -l user -d 'Target the user-level config'
complete -c jj -n "__fish_seen_subcommand_from config edit" -l repo -d 'Target the repo-level config'
complete -c jj -n "__fish_seen_subcommand_from config edit" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from config edit" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from config edit" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from config edit" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from config edit" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from config edit" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from config e" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from config e" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from config e" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from config e" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from config e" -l user -d 'Target the user-level config'
complete -c jj -n "__fish_seen_subcommand_from config e" -l repo -d 'Target the repo-level config'
complete -c jj -n "__fish_seen_subcommand_from config e" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from config e" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from config e" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from config e" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from config e" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from config e" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from config get" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from config get" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from config get" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from config get" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from config get" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from config get" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from config get" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from config get" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from config get" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from config get" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from config g" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from config g" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from config g" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from config g" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from config g" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from config g" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from config g" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from config g" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from config g" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from config g" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from config list" -s T -l template -d 'Render each variable using the given template' -r
complete -c jj -n "__fish_seen_subcommand_from config list" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from config list" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from config list" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from config list" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from config list" -l include-defaults -d 'Whether to explicitly include built-in default values in the list'
complete -c jj -n "__fish_seen_subcommand_from config list" -l include-overridden -d 'Allow printing overridden values'
complete -c jj -n "__fish_seen_subcommand_from config list" -l user -d 'Target the user-level config'
complete -c jj -n "__fish_seen_subcommand_from config list" -l repo -d 'Target the repo-level config'
complete -c jj -n "__fish_seen_subcommand_from config list" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from config list" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from config list" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from config list" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from config list" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from config list" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from config l" -s T -l template -d 'Render each variable using the given template' -r
complete -c jj -n "__fish_seen_subcommand_from config l" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from config l" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from config l" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from config l" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from config l" -l include-defaults -d 'Whether to explicitly include built-in default values in the list'
complete -c jj -n "__fish_seen_subcommand_from config l" -l include-overridden -d 'Allow printing overridden values'
complete -c jj -n "__fish_seen_subcommand_from config l" -l user -d 'Target the user-level config'
complete -c jj -n "__fish_seen_subcommand_from config l" -l repo -d 'Target the repo-level config'
complete -c jj -n "__fish_seen_subcommand_from config l" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from config l" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from config l" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from config l" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from config l" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from config l" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from config path" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from config path" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from config path" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from config path" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from config path" -l user -d 'Target the user-level config'
complete -c jj -n "__fish_seen_subcommand_from config path" -l repo -d 'Target the repo-level config'
complete -c jj -n "__fish_seen_subcommand_from config path" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from config path" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from config path" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from config path" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from config path" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from config path" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from config p" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from config p" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from config p" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from config p" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from config p" -l user -d 'Target the user-level config'
complete -c jj -n "__fish_seen_subcommand_from config p" -l repo -d 'Target the repo-level config'
complete -c jj -n "__fish_seen_subcommand_from config p" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from config p" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from config p" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from config p" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from config p" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from config p" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from config set" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from config set" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from config set" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from config set" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from config set" -l user -d 'Target the user-level config'
complete -c jj -n "__fish_seen_subcommand_from config set" -l repo -d 'Target the repo-level config'
complete -c jj -n "__fish_seen_subcommand_from config set" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from config set" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from config set" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from config set" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from config set" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from config set" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from config s" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from config s" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from config s" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from config s" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from config s" -l user -d 'Target the user-level config'
complete -c jj -n "__fish_seen_subcommand_from config s" -l repo -d 'Target the repo-level config'
complete -c jj -n "__fish_seen_subcommand_from config s" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from config s" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from config s" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from config s" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from config s" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from config s" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from config help; and not __fish_seen_subcommand_from edit get list path set help" -f -a "edit" -d 'Start an editor on a jj config file'
complete -c jj -n "__fish_seen_subcommand_from config help; and not __fish_seen_subcommand_from edit get list path set help" -f -a "get" -d 'Get the value of a given config option.'
complete -c jj -n "__fish_seen_subcommand_from config help; and not __fish_seen_subcommand_from edit get list path set help" -f -a "list" -d 'List variables set in config file, along with their values'
complete -c jj -n "__fish_seen_subcommand_from config help; and not __fish_seen_subcommand_from edit get list path set help" -f -a "path" -d 'Print the path to the config file'
complete -c jj -n "__fish_seen_subcommand_from config help; and not __fish_seen_subcommand_from edit get list path set help" -f -a "set" -d 'Update config file to set the given option to a given value'
complete -c jj -n "__fish_seen_subcommand_from config help; and not __fish_seen_subcommand_from edit get list path set help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -f -a "fileset" -d 'Parse fileset expression'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -f -a "index" -d 'Show commit index stats'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -f -a "local-working-copy" -d 'Show information about the local working copy state'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -f -a "operation" -d 'Show information about an operation and its view'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -f -a "view" -d 'Show information about an operation and its view'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -f -a "reindex" -d 'Rebuild commit index'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -f -a "revset" -d 'Evaluate revset to full commit IDs'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -f -a "snapshot" -d 'Trigger a snapshot in the op log'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -f -a "template" -d 'Parse a template'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -f -a "tree" -d 'List the recursive entries of a tree'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -f -a "watchman"
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -f -a "working-copy" -d 'Show information about the working copy state'
complete -c jj -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation view reindex revset snapshot template tree watchman working-copy help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from debug fileset" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug fileset" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug fileset" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug fileset" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug fileset" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug fileset" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug fileset" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug fileset" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug fileset" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug fileset" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug index" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug index" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug index" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug index" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug index" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug index" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug index" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug index" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug index" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug index" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug local-working-copy" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug local-working-copy" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug local-working-copy" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug local-working-copy" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug local-working-copy" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug local-working-copy" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug local-working-copy" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug local-working-copy" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug local-working-copy" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug local-working-copy" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug operation" -l display -r -f -a "{operation\t'Show only the operation details',id\t'Show the operation id only',view\t'Show only the view details',all\t'Show both the view and the operation'}"
complete -c jj -n "__fish_seen_subcommand_from debug operation" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug operation" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug operation" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug operation" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug operation" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug operation" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug operation" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug operation" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug operation" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug operation" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug view" -l display -r -f -a "{operation\t'Show only the operation details',id\t'Show the operation id only',view\t'Show only the view details',all\t'Show both the view and the operation'}"
complete -c jj -n "__fish_seen_subcommand_from debug view" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug view" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug view" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug view" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug view" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug view" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug view" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug view" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug view" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug view" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug reindex" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug reindex" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug reindex" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug reindex" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug reindex" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug reindex" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug reindex" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug reindex" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug reindex" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug reindex" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug revset" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug revset" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug revset" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug revset" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug revset" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug revset" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug revset" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug revset" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug revset" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug revset" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug snapshot" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug snapshot" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug snapshot" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug snapshot" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug snapshot" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug snapshot" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug snapshot" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug snapshot" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug snapshot" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug snapshot" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug template" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug template" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug template" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug template" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug template" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug template" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug template" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug template" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug template" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug template" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug tree" -s r -l revision -r
complete -c jj -n "__fish_seen_subcommand_from debug tree" -l id -r
complete -c jj -n "__fish_seen_subcommand_from debug tree" -l dir -r
complete -c jj -n "__fish_seen_subcommand_from debug tree" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug tree" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug tree" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug tree" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug tree" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug tree" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug tree" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug tree" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug tree" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug tree" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -f -a "status" -d 'Check whether `watchman` is enabled and whether it\'s correctly installed'
complete -c jj -n "__fish_seen_subcommand_from debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -f -a "query-clock"
complete -c jj -n "__fish_seen_subcommand_from debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -f -a "query-changed-files"
complete -c jj -n "__fish_seen_subcommand_from debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -f -a "reset-clock"
complete -c jj -n "__fish_seen_subcommand_from debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from debug watchman status" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug watchman status" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug watchman status" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug watchman status" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug watchman status" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug watchman status" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug watchman status" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug watchman status" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug watchman status" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug watchman status" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-clock" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-clock" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-clock" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-clock" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-clock" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-clock" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-clock" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-clock" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-clock" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-clock" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-changed-files" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-changed-files" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-changed-files" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-changed-files" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-changed-files" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-changed-files" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-changed-files" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-changed-files" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-changed-files" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug watchman query-changed-files" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug watchman reset-clock" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug watchman reset-clock" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug watchman reset-clock" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug watchman reset-clock" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug watchman reset-clock" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug watchman reset-clock" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug watchman reset-clock" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug watchman reset-clock" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug watchman reset-clock" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug watchman reset-clock" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug watchman help; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -f -a "status" -d 'Check whether `watchman` is enabled and whether it\'s correctly installed'
complete -c jj -n "__fish_seen_subcommand_from debug watchman help; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -f -a "query-clock"
complete -c jj -n "__fish_seen_subcommand_from debug watchman help; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -f -a "query-changed-files"
complete -c jj -n "__fish_seen_subcommand_from debug watchman help; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -f -a "reset-clock"
complete -c jj -n "__fish_seen_subcommand_from debug watchman help; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from debug working-copy" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from debug working-copy" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from debug working-copy" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from debug working-copy" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from debug working-copy" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from debug working-copy" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from debug working-copy" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from debug working-copy" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from debug working-copy" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from debug working-copy" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from debug help; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy help" -f -a "fileset" -d 'Parse fileset expression'
complete -c jj -n "__fish_seen_subcommand_from debug help; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy help" -f -a "index" -d 'Show commit index stats'
complete -c jj -n "__fish_seen_subcommand_from debug help; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy help" -f -a "local-working-copy" -d 'Show information about the local working copy state'
complete -c jj -n "__fish_seen_subcommand_from debug help; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy help" -f -a "operation" -d 'Show information about an operation and its view'
complete -c jj -n "__fish_seen_subcommand_from debug help; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy help" -f -a "reindex" -d 'Rebuild commit index'
complete -c jj -n "__fish_seen_subcommand_from debug help; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy help" -f -a "revset" -d 'Evaluate revset to full commit IDs'
complete -c jj -n "__fish_seen_subcommand_from debug help; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy help" -f -a "snapshot" -d 'Trigger a snapshot in the op log'
complete -c jj -n "__fish_seen_subcommand_from debug help; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy help" -f -a "template" -d 'Parse a template'
complete -c jj -n "__fish_seen_subcommand_from debug help; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy help" -f -a "tree" -d 'List the recursive entries of a tree'
complete -c jj -n "__fish_seen_subcommand_from debug help; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy help" -f -a "watchman"
complete -c jj -n "__fish_seen_subcommand_from debug help; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy help" -f -a "working-copy" -d 'Show information about the working copy state'
complete -c jj -n "__fish_seen_subcommand_from debug help; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from debug help watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock" -f -a "status" -d 'Check whether `watchman` is enabled and whether it\'s correctly installed'
complete -c jj -n "__fish_seen_subcommand_from debug help watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock" -f -a "query-clock"
complete -c jj -n "__fish_seen_subcommand_from debug help watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock" -f -a "query-changed-files"
complete -c jj -n "__fish_seen_subcommand_from debug help watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock" -f -a "reset-clock"
complete -c jj -n "__fish_seen_subcommand_from describe" -s m -l message -d 'The change description to use (don\'t open editor)' -r
complete -c jj -n "__fish_seen_subcommand_from describe" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from describe" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from describe" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from describe" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from describe" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from describe" -l stdin -d 'Read the change description from stdin'
complete -c jj -n "__fish_seen_subcommand_from describe" -l no-edit -d 'Don\'t open an editor'
complete -c jj -n "__fish_seen_subcommand_from describe" -l reset-author -d 'Reset the author to the configured user'
complete -c jj -n "__fish_seen_subcommand_from describe" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from describe" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from describe" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from describe" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from describe" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from describe" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from desc" -s m -l message -d 'The change description to use (don\'t open editor)' -r
complete -c jj -n "__fish_seen_subcommand_from desc" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from desc" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from desc" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from desc" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from desc" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from desc" -l stdin -d 'Read the change description from stdin'
complete -c jj -n "__fish_seen_subcommand_from desc" -l no-edit -d 'Don\'t open an editor'
complete -c jj -n "__fish_seen_subcommand_from desc" -l reset-author -d 'Reset the author to the configured user'
complete -c jj -n "__fish_seen_subcommand_from desc" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from desc" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from desc" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from desc" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from desc" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from desc" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from diff" -s r -l revision -d 'Show changes in this revision, compared to its parent(s)' -r
complete -c jj -n "__fish_seen_subcommand_from diff" -l from -d 'Show changes from this revision' -r
complete -c jj -n "__fish_seen_subcommand_from diff" -l to -d 'Show changes to this revision' -r
complete -c jj -n "__fish_seen_subcommand_from diff" -l tool -d 'Generate diff by external command' -r
complete -c jj -n "__fish_seen_subcommand_from diff" -l context -d 'Number of lines of context to show' -r
complete -c jj -n "__fish_seen_subcommand_from diff" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from diff" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from diff" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from diff" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from diff" -s s -l summary -d 'For each path, show only whether it was modified, added, or deleted'
complete -c jj -n "__fish_seen_subcommand_from diff" -l stat -d 'Show a histogram of the changes'
complete -c jj -n "__fish_seen_subcommand_from diff" -l types -d 'For each path, show only its type before and after'
complete -c jj -n "__fish_seen_subcommand_from diff" -l name-only -d 'For each path, show only its path'
complete -c jj -n "__fish_seen_subcommand_from diff" -l git -d 'Show a Git-format diff'
complete -c jj -n "__fish_seen_subcommand_from diff" -l color-words -d 'Show a word-level diff with changes indicated only by color'
complete -c jj -n "__fish_seen_subcommand_from diff" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from diff" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from diff" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from diff" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from diff" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from diff" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from diffedit" -s r -l revision -d 'The revision to touch up. Defaults to @ if neither --to nor --from are specified' -r
complete -c jj -n "__fish_seen_subcommand_from diffedit" -l from -d 'Show changes from this revision. Defaults to @ if --to is specified' -r
complete -c jj -n "__fish_seen_subcommand_from diffedit" -l to -d 'Edit changes in this revision. Defaults to @ if --from is specified' -r
complete -c jj -n "__fish_seen_subcommand_from diffedit" -l tool -d 'Specify diff editor to be used' -r
complete -c jj -n "__fish_seen_subcommand_from diffedit" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from diffedit" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from diffedit" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from diffedit" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from diffedit" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from diffedit" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from diffedit" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from diffedit" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from diffedit" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from diffedit" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from duplicate" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from duplicate" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from duplicate" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from duplicate" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from duplicate" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from duplicate" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from duplicate" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from duplicate" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from duplicate" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from duplicate" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from duplicate" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from edit" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from edit" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from edit" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from edit" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from edit" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from edit" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from edit" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from edit" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from edit" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from edit" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from edit" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from file; and not __fish_seen_subcommand_from chmod list show help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from file; and not __fish_seen_subcommand_from chmod list show help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from file; and not __fish_seen_subcommand_from chmod list show help" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from file; and not __fish_seen_subcommand_from chmod list show help" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from file; and not __fish_seen_subcommand_from chmod list show help" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from file; and not __fish_seen_subcommand_from chmod list show help" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from file; and not __fish_seen_subcommand_from chmod list show help" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from file; and not __fish_seen_subcommand_from chmod list show help" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from file; and not __fish_seen_subcommand_from chmod list show help" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from file; and not __fish_seen_subcommand_from chmod list show help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from file; and not __fish_seen_subcommand_from chmod list show help" -f -a "chmod" -d 'Sets or removes the executable bit for paths in the repo'
complete -c jj -n "__fish_seen_subcommand_from file; and not __fish_seen_subcommand_from chmod list show help" -f -a "list" -d 'List files in a revision'
complete -c jj -n "__fish_seen_subcommand_from file; and not __fish_seen_subcommand_from chmod list show help" -f -a "show" -d 'Print contents of files in a revision'
complete -c jj -n "__fish_seen_subcommand_from file; and not __fish_seen_subcommand_from chmod list show help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from file chmod" -s r -l revision -d 'The revision to update' -r
complete -c jj -n "__fish_seen_subcommand_from file chmod" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from file chmod" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from file chmod" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from file chmod" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from file chmod" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from file chmod" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from file chmod" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from file chmod" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from file chmod" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from file chmod" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from file list" -s r -l revision -d 'The revision to list files in' -r
complete -c jj -n "__fish_seen_subcommand_from file list" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from file list" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from file list" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from file list" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from file list" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from file list" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from file list" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from file list" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from file list" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from file list" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from file show" -s r -l revision -d 'The revision to get the file contents from' -r
complete -c jj -n "__fish_seen_subcommand_from file show" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from file show" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from file show" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from file show" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from file show" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from file show" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from file show" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from file show" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from file show" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from file show" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from file help; and not __fish_seen_subcommand_from chmod list show help" -f -a "chmod" -d 'Sets or removes the executable bit for paths in the repo'
complete -c jj -n "__fish_seen_subcommand_from file help; and not __fish_seen_subcommand_from chmod list show help" -f -a "list" -d 'List files in a revision'
complete -c jj -n "__fish_seen_subcommand_from file help; and not __fish_seen_subcommand_from chmod list show help" -f -a "show" -d 'Print contents of files in a revision'
complete -c jj -n "__fish_seen_subcommand_from file help; and not __fish_seen_subcommand_from chmod list show help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from files" -s r -l revision -d 'The revision to list files in' -r
complete -c jj -n "__fish_seen_subcommand_from files" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from files" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from files" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from files" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from files" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from files" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from files" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from files" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from files" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from files" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from fix" -s s -l source -d 'Fix files in the specified revision(s) and their descendants. If no revisions are specified, this defaults to the `revsets.fix` setting, or `reachable(@, mutable())` if it is not set' -r
complete -c jj -n "__fish_seen_subcommand_from fix" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from fix" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from fix" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from fix" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from fix" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from fix" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from fix" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from fix" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from fix" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from fix" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "clone" -d 'Create a new repo backed by a clone of a Git repo'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "export" -d 'Update the underlying Git repo with changes made in the repo'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "fetch" -d 'Fetch from a Git remote'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "import" -d 'Update repo with changes made in the underlying Git repo'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "init" -d 'Create a new Git backed repo'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "push" -d 'Push to a Git remote'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "remote" -d 'Manage Git remotes'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "submodule" -d 'FOR INTERNAL USE ONLY Interact with git submodules'
complete -c jj -n "__fish_seen_subcommand_from git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from git clone" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git clone" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git clone" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git clone" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git clone" -l colocate -d 'Whether or not to colocate the Jujutsu repo with the git repo'
complete -c jj -n "__fish_seen_subcommand_from git clone" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from git clone" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from git clone" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from git clone" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from git clone" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from git clone" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from git export" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git export" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git export" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git export" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git export" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from git export" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from git export" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from git export" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from git export" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from git export" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from git fetch" -s b -l branch -d 'Fetch only some of the branches' -r
complete -c jj -n "__fish_seen_subcommand_from git fetch" -l remote -d 'The remote to fetch from (only named remotes are supported, can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git fetch" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git fetch" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git fetch" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git fetch" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git fetch" -l all-remotes -d 'Fetch from all remotes'
complete -c jj -n "__fish_seen_subcommand_from git fetch" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from git fetch" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from git fetch" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from git fetch" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from git fetch" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from git fetch" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from git import" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git import" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git import" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git import" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git import" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from git import" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from git import" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from git import" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from git import" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from git import" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from git init" -l git-repo -d 'Specifies a path to an **existing** git repository to be used as the backing git repo for the newly created `jj` repo' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git init" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git init" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git init" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git init" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git init" -l colocate -d 'Specifies that the `jj` repo should also be a valid `git` repo, allowing the use of both `jj` and `git` commands in the same directory'
complete -c jj -n "__fish_seen_subcommand_from git init" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from git init" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from git init" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from git init" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from git init" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from git init" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from git push" -l remote -d 'The remote to push to (only named remotes are supported)' -r
complete -c jj -n "__fish_seen_subcommand_from git push" -s b -l branch -d 'Push only this branch, or branches matching a pattern (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git push" -s r -l revisions -d 'Push branches pointing to these commits (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git push" -s c -l change -d 'Push this commit by creating a branch based on its change ID (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git push" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git push" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git push" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git push" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git push" -l all -d 'Push all branches (including deleted branches)'
complete -c jj -n "__fish_seen_subcommand_from git push" -l tracked -d 'Push all tracked branches (including deleted branches)'
complete -c jj -n "__fish_seen_subcommand_from git push" -l deleted -d 'Push all deleted branches'
complete -c jj -n "__fish_seen_subcommand_from git push" -l allow-empty-description -d 'Allow pushing commits with empty descriptions'
complete -c jj -n "__fish_seen_subcommand_from git push" -l dry-run -d 'Only display what will change on the remote'
complete -c jj -n "__fish_seen_subcommand_from git push" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from git push" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from git push" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from git push" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from git push" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from git push" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from git remote; and not __fish_seen_subcommand_from add list remove rename set-url help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git remote; and not __fish_seen_subcommand_from add list remove rename set-url help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git remote; and not __fish_seen_subcommand_from add list remove rename set-url help" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git remote; and not __fish_seen_subcommand_from add list remove rename set-url help" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git remote; and not __fish_seen_subcommand_from add list remove rename set-url help" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from git remote; and not __fish_seen_subcommand_from add list remove rename set-url help" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from git remote; and not __fish_seen_subcommand_from add list remove rename set-url help" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from git remote; and not __fish_seen_subcommand_from add list remove rename set-url help" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from git remote; and not __fish_seen_subcommand_from add list remove rename set-url help" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from git remote; and not __fish_seen_subcommand_from add list remove rename set-url help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from git remote; and not __fish_seen_subcommand_from add list remove rename set-url help" -f -a "add" -d 'Add a Git remote'
complete -c jj -n "__fish_seen_subcommand_from git remote; and not __fish_seen_subcommand_from add list remove rename set-url help" -f -a "list" -d 'List Git remotes'
complete -c jj -n "__fish_seen_subcommand_from git remote; and not __fish_seen_subcommand_from add list remove rename set-url help" -f -a "remove" -d 'Remove a Git remote and forget its branches'
complete -c jj -n "__fish_seen_subcommand_from git remote; and not __fish_seen_subcommand_from add list remove rename set-url help" -f -a "rename" -d 'Rename a Git remote'
complete -c jj -n "__fish_seen_subcommand_from git remote; and not __fish_seen_subcommand_from add list remove rename set-url help" -f -a "set-url" -d 'Set the URL of a Git remote'
complete -c jj -n "__fish_seen_subcommand_from git remote; and not __fish_seen_subcommand_from add list remove rename set-url help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from git remote add" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git remote add" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git remote add" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git remote add" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git remote add" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from git remote add" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from git remote add" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from git remote add" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from git remote add" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from git remote add" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from git remote list" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git remote list" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git remote list" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git remote list" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git remote list" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from git remote list" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from git remote list" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from git remote list" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from git remote list" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from git remote list" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from git remote remove" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git remote remove" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git remote remove" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git remote remove" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git remote remove" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from git remote remove" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from git remote remove" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from git remote remove" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from git remote remove" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from git remote remove" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from git remote rename" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git remote rename" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git remote rename" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git remote rename" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git remote rename" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from git remote rename" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from git remote rename" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from git remote rename" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from git remote rename" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from git remote rename" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from git remote set-url" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git remote set-url" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git remote set-url" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git remote set-url" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git remote set-url" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from git remote set-url" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from git remote set-url" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from git remote set-url" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from git remote set-url" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from git remote set-url" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from git remote help; and not __fish_seen_subcommand_from add list remove rename set-url help" -f -a "add" -d 'Add a Git remote'
complete -c jj -n "__fish_seen_subcommand_from git remote help; and not __fish_seen_subcommand_from add list remove rename set-url help" -f -a "list" -d 'List Git remotes'
complete -c jj -n "__fish_seen_subcommand_from git remote help; and not __fish_seen_subcommand_from add list remove rename set-url help" -f -a "remove" -d 'Remove a Git remote and forget its branches'
complete -c jj -n "__fish_seen_subcommand_from git remote help; and not __fish_seen_subcommand_from add list remove rename set-url help" -f -a "rename" -d 'Rename a Git remote'
complete -c jj -n "__fish_seen_subcommand_from git remote help; and not __fish_seen_subcommand_from add list remove rename set-url help" -f -a "set-url" -d 'Set the URL of a Git remote'
complete -c jj -n "__fish_seen_subcommand_from git remote help; and not __fish_seen_subcommand_from add list remove rename set-url help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from git submodule; and not __fish_seen_subcommand_from print-gitmodules help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git submodule; and not __fish_seen_subcommand_from print-gitmodules help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git submodule; and not __fish_seen_subcommand_from print-gitmodules help" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git submodule; and not __fish_seen_subcommand_from print-gitmodules help" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git submodule; and not __fish_seen_subcommand_from print-gitmodules help" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from git submodule; and not __fish_seen_subcommand_from print-gitmodules help" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from git submodule; and not __fish_seen_subcommand_from print-gitmodules help" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from git submodule; and not __fish_seen_subcommand_from print-gitmodules help" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from git submodule; and not __fish_seen_subcommand_from print-gitmodules help" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from git submodule; and not __fish_seen_subcommand_from print-gitmodules help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from git submodule; and not __fish_seen_subcommand_from print-gitmodules help" -f -a "print-gitmodules" -d 'Print the relevant contents from .gitmodules. For debugging purposes only'
complete -c jj -n "__fish_seen_subcommand_from git submodule; and not __fish_seen_subcommand_from print-gitmodules help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from git submodule print-gitmodules" -s r -l revisions -d 'Read .gitmodules from the given revision' -r
complete -c jj -n "__fish_seen_subcommand_from git submodule print-gitmodules" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from git submodule print-gitmodules" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from git submodule print-gitmodules" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from git submodule print-gitmodules" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from git submodule print-gitmodules" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from git submodule print-gitmodules" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from git submodule print-gitmodules" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from git submodule print-gitmodules" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from git submodule print-gitmodules" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from git submodule print-gitmodules" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from git submodule help; and not __fish_seen_subcommand_from print-gitmodules help" -f -a "print-gitmodules" -d 'Print the relevant contents from .gitmodules. For debugging purposes only'
complete -c jj -n "__fish_seen_subcommand_from git submodule help; and not __fish_seen_subcommand_from print-gitmodules help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from git help; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "clone" -d 'Create a new repo backed by a clone of a Git repo'
complete -c jj -n "__fish_seen_subcommand_from git help; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "export" -d 'Update the underlying Git repo with changes made in the repo'
complete -c jj -n "__fish_seen_subcommand_from git help; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "fetch" -d 'Fetch from a Git remote'
complete -c jj -n "__fish_seen_subcommand_from git help; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "import" -d 'Update repo with changes made in the underlying Git repo'
complete -c jj -n "__fish_seen_subcommand_from git help; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "init" -d 'Create a new Git backed repo'
complete -c jj -n "__fish_seen_subcommand_from git help; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "push" -d 'Push to a Git remote'
complete -c jj -n "__fish_seen_subcommand_from git help; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "remote" -d 'Manage Git remotes'
complete -c jj -n "__fish_seen_subcommand_from git help; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "submodule" -d 'FOR INTERNAL USE ONLY Interact with git submodules'
complete -c jj -n "__fish_seen_subcommand_from git help; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from git help remote; and not __fish_seen_subcommand_from add list remove rename set-url" -f -a "add" -d 'Add a Git remote'
complete -c jj -n "__fish_seen_subcommand_from git help remote; and not __fish_seen_subcommand_from add list remove rename set-url" -f -a "list" -d 'List Git remotes'
complete -c jj -n "__fish_seen_subcommand_from git help remote; and not __fish_seen_subcommand_from add list remove rename set-url" -f -a "remove" -d 'Remove a Git remote and forget its branches'
complete -c jj -n "__fish_seen_subcommand_from git help remote; and not __fish_seen_subcommand_from add list remove rename set-url" -f -a "rename" -d 'Rename a Git remote'
complete -c jj -n "__fish_seen_subcommand_from git help remote; and not __fish_seen_subcommand_from add list remove rename set-url" -f -a "set-url" -d 'Set the URL of a Git remote'
complete -c jj -n "__fish_seen_subcommand_from git help submodule; and not __fish_seen_subcommand_from print-gitmodules" -f -a "print-gitmodules" -d 'Print the relevant contents from .gitmodules. For debugging purposes only'
complete -c jj -n "__fish_seen_subcommand_from init" -l git-repo -d 'DEPRECATED: Use `jj git init` Path to a git repo the jj repo will be backed by' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from init" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from init" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from init" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from init" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from init" -l git -d 'DEPRECATED: Use `jj git init` Use the Git backend, creating a jj repo backed by a Git repo'
complete -c jj -n "__fish_seen_subcommand_from init" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from init" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from init" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from init" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from init" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from init" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l from -d 'Show changes from this revision' -r
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l to -d 'Show changes to this revision' -r
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l tool -d 'Generate diff by external command' -r
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l context -d 'Number of lines of context to show' -r
complete -c jj -n "__fish_seen_subcommand_from interdiff" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from interdiff" -s s -l summary -d 'For each path, show only whether it was modified, added, or deleted'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l stat -d 'Show a histogram of the changes'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l types -d 'For each path, show only its type before and after'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l name-only -d 'For each path, show only its path'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l git -d 'Show a Git-format diff'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l color-words -d 'Show a word-level diff with changes indicated only by color'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from interdiff" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from log" -s r -l revisions -d 'Which revisions to show. If no paths nor revisions are specified, this defaults to the `revsets.log` setting, or `@ | ancestors(immutable_heads().., 2) | trunk()` if it is not set' -r
complete -c jj -n "__fish_seen_subcommand_from log" -s n -l limit -d 'Limit number of revisions to show' -r
complete -c jj -n "__fish_seen_subcommand_from log" -s l -r
complete -c jj -n "__fish_seen_subcommand_from log" -s T -l template -d 'Render each revision using the given template' -r
complete -c jj -n "__fish_seen_subcommand_from log" -l tool -d 'Generate diff by external command' -r
complete -c jj -n "__fish_seen_subcommand_from log" -l context -d 'Number of lines of context to show' -r
complete -c jj -n "__fish_seen_subcommand_from log" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from log" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from log" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from log" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from log" -l reversed -d 'Show revisions in the opposite order (older revisions first)'
complete -c jj -n "__fish_seen_subcommand_from log" -l no-graph -d 'Don\'t show the graph, show a flat list of revisions'
complete -c jj -n "__fish_seen_subcommand_from log" -s p -l patch -d 'Show patch'
complete -c jj -n "__fish_seen_subcommand_from log" -s s -l summary -d 'For each path, show only whether it was modified, added, or deleted'
complete -c jj -n "__fish_seen_subcommand_from log" -l stat -d 'Show a histogram of the changes'
complete -c jj -n "__fish_seen_subcommand_from log" -l types -d 'For each path, show only its type before and after'
complete -c jj -n "__fish_seen_subcommand_from log" -l name-only -d 'For each path, show only its path'
complete -c jj -n "__fish_seen_subcommand_from log" -l git -d 'Show a Git-format diff'
complete -c jj -n "__fish_seen_subcommand_from log" -l color-words -d 'Show a word-level diff with changes indicated only by color'
complete -c jj -n "__fish_seen_subcommand_from log" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from log" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from log" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from log" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from log" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from log" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from merge" -s m -l message -d 'The change description to use' -r
complete -c jj -n "__fish_seen_subcommand_from merge" -s A -l insert-after -l after -d 'Insert the new change after the given commit(s)' -r
complete -c jj -n "__fish_seen_subcommand_from merge" -s B -l insert-before -l before -d 'Insert the new change before the given commit(s)' -r
complete -c jj -n "__fish_seen_subcommand_from merge" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from merge" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from merge" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from merge" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from merge" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from merge" -l no-edit -d 'Do not edit the newly created change'
complete -c jj -n "__fish_seen_subcommand_from merge" -l edit -d 'No-op flag to pair with --no-edit'
complete -c jj -n "__fish_seen_subcommand_from merge" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from merge" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from merge" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from merge" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from merge" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from merge" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from move" -s f -l from -d 'Move part of this change into the destination' -r
complete -c jj -n "__fish_seen_subcommand_from move" -s t -l to -d 'Move part of the source into this change' -r
complete -c jj -n "__fish_seen_subcommand_from move" -l tool -d 'Specify diff editor to be used (implies --interactive)' -r
complete -c jj -n "__fish_seen_subcommand_from move" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from move" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from move" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from move" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from move" -s i -l interactive -d 'Interactively choose which parts to move'
complete -c jj -n "__fish_seen_subcommand_from move" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from move" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from move" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from move" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from move" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from move" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from new" -s m -l message -d 'The change description to use' -r
complete -c jj -n "__fish_seen_subcommand_from new" -s A -l insert-after -l after -d 'Insert the new change after the given commit(s)' -r
complete -c jj -n "__fish_seen_subcommand_from new" -s B -l insert-before -l before -d 'Insert the new change before the given commit(s)' -r
complete -c jj -n "__fish_seen_subcommand_from new" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from new" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from new" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from new" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from new" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from new" -l no-edit -d 'Do not edit the newly created change'
complete -c jj -n "__fish_seen_subcommand_from new" -l edit -d 'No-op flag to pair with --no-edit'
complete -c jj -n "__fish_seen_subcommand_from new" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from new" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from new" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from new" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from new" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from new" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from next" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from next" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from next" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from next" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from next" -s e -l edit -d 'Instead of creating a new working-copy commit on top of the target commit (like `jj new`), edit the target commit directly (like `jj edit`)'
complete -c jj -n "__fish_seen_subcommand_from next" -l conflict -d 'Jump to the next conflicted descendant'
complete -c jj -n "__fish_seen_subcommand_from next" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from next" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from next" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from next" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from next" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from next" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from obslog" -s r -l revision -r
complete -c jj -n "__fish_seen_subcommand_from obslog" -s n -l limit -d 'Limit number of revisions to show' -r
complete -c jj -n "__fish_seen_subcommand_from obslog" -s l -r
complete -c jj -n "__fish_seen_subcommand_from obslog" -s T -l template -d 'Render each revision using the given template' -r
complete -c jj -n "__fish_seen_subcommand_from obslog" -l tool -d 'Generate diff by external command' -r
complete -c jj -n "__fish_seen_subcommand_from obslog" -l context -d 'Number of lines of context to show' -r
complete -c jj -n "__fish_seen_subcommand_from obslog" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from obslog" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from obslog" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from obslog" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from obslog" -l no-graph -d 'Don\'t show the graph, show a flat list of revisions'
complete -c jj -n "__fish_seen_subcommand_from obslog" -s p -l patch -d 'Show patch compared to the previous version of this change'
complete -c jj -n "__fish_seen_subcommand_from obslog" -s s -l summary -d 'For each path, show only whether it was modified, added, or deleted'
complete -c jj -n "__fish_seen_subcommand_from obslog" -l stat -d 'Show a histogram of the changes'
complete -c jj -n "__fish_seen_subcommand_from obslog" -l types -d 'For each path, show only its type before and after'
complete -c jj -n "__fish_seen_subcommand_from obslog" -l name-only -d 'For each path, show only its path'
complete -c jj -n "__fish_seen_subcommand_from obslog" -l git -d 'Show a Git-format diff'
complete -c jj -n "__fish_seen_subcommand_from obslog" -l color-words -d 'Show a word-level diff with changes indicated only by color'
complete -c jj -n "__fish_seen_subcommand_from obslog" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from obslog" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from obslog" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from obslog" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from obslog" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from obslog" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from abandon log restore undo help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from abandon log restore undo help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from abandon log restore undo help" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from abandon log restore undo help" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from abandon log restore undo help" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from abandon log restore undo help" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from abandon log restore undo help" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from abandon log restore undo help" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from abandon log restore undo help" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from abandon log restore undo help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "abandon" -d 'Abandon operation history'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "log" -d 'Show the operation log'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "restore" -d 'Create a new operation that restores the repo to an earlier state'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "undo" -d 'Create a new operation that undoes an earlier operation'
complete -c jj -n "__fish_seen_subcommand_from operation; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from operation abandon" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from operation abandon" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from operation abandon" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from operation abandon" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from operation abandon" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from operation abandon" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from operation abandon" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from operation abandon" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from operation abandon" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from operation abandon" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from operation log" -s n -l limit -d 'Limit number of operations to show' -r
complete -c jj -n "__fish_seen_subcommand_from operation log" -s l -r
complete -c jj -n "__fish_seen_subcommand_from operation log" -s T -l template -d 'Render each operation using the given template' -r
complete -c jj -n "__fish_seen_subcommand_from operation log" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from operation log" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from operation log" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from operation log" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from operation log" -l no-graph -d 'Don\'t show the graph, show a flat list of operations'
complete -c jj -n "__fish_seen_subcommand_from operation log" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from operation log" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from operation log" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from operation log" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from operation log" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from operation log" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from operation restore" -l what -d 'What portions of the local state to restore (can be repeated)' -r -f -a "{repo\t'The jj repo state and local branches',remote-tracking\t'The remote-tracking branches. Do not restore these if you\'d like to push after the undo'}"
complete -c jj -n "__fish_seen_subcommand_from operation restore" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from operation restore" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from operation restore" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from operation restore" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from operation restore" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from operation restore" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from operation restore" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from operation restore" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from operation restore" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from operation restore" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from operation undo" -l what -d 'What portions of the local state to restore (can be repeated)' -r -f -a "{repo\t'The jj repo state and local branches',remote-tracking\t'The remote-tracking branches. Do not restore these if you\'d like to push after the undo'}"
complete -c jj -n "__fish_seen_subcommand_from operation undo" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from operation undo" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from operation undo" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from operation undo" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from operation undo" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from operation undo" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from operation undo" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from operation undo" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from operation undo" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from operation undo" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from operation help; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "abandon" -d 'Abandon operation history'
complete -c jj -n "__fish_seen_subcommand_from operation help; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "log" -d 'Show the operation log'
complete -c jj -n "__fish_seen_subcommand_from operation help; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "restore" -d 'Create a new operation that restores the repo to an earlier state'
complete -c jj -n "__fish_seen_subcommand_from operation help; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "undo" -d 'Create a new operation that undoes an earlier operation'
complete -c jj -n "__fish_seen_subcommand_from operation help; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from op; and not __fish_seen_subcommand_from abandon log restore undo help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from op; and not __fish_seen_subcommand_from abandon log restore undo help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from op; and not __fish_seen_subcommand_from abandon log restore undo help" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from op; and not __fish_seen_subcommand_from abandon log restore undo help" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from op; and not __fish_seen_subcommand_from abandon log restore undo help" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from op; and not __fish_seen_subcommand_from abandon log restore undo help" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from op; and not __fish_seen_subcommand_from abandon log restore undo help" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from op; and not __fish_seen_subcommand_from abandon log restore undo help" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from op; and not __fish_seen_subcommand_from abandon log restore undo help" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from op; and not __fish_seen_subcommand_from abandon log restore undo help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from op; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "abandon" -d 'Abandon operation history'
complete -c jj -n "__fish_seen_subcommand_from op; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "log" -d 'Show the operation log'
complete -c jj -n "__fish_seen_subcommand_from op; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "restore" -d 'Create a new operation that restores the repo to an earlier state'
complete -c jj -n "__fish_seen_subcommand_from op; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "undo" -d 'Create a new operation that undoes an earlier operation'
complete -c jj -n "__fish_seen_subcommand_from op; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from op abandon" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from op abandon" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from op abandon" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from op abandon" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from op abandon" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from op abandon" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from op abandon" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from op abandon" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from op abandon" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from op abandon" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from op log" -s n -l limit -d 'Limit number of operations to show' -r
complete -c jj -n "__fish_seen_subcommand_from op log" -s l -r
complete -c jj -n "__fish_seen_subcommand_from op log" -s T -l template -d 'Render each operation using the given template' -r
complete -c jj -n "__fish_seen_subcommand_from op log" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from op log" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from op log" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from op log" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from op log" -l no-graph -d 'Don\'t show the graph, show a flat list of operations'
complete -c jj -n "__fish_seen_subcommand_from op log" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from op log" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from op log" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from op log" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from op log" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from op log" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from op restore" -l what -d 'What portions of the local state to restore (can be repeated)' -r -f -a "{repo\t'The jj repo state and local branches',remote-tracking\t'The remote-tracking branches. Do not restore these if you\'d like to push after the undo'}"
complete -c jj -n "__fish_seen_subcommand_from op restore" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from op restore" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from op restore" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from op restore" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from op restore" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from op restore" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from op restore" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from op restore" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from op restore" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from op restore" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from op undo" -l what -d 'What portions of the local state to restore (can be repeated)' -r -f -a "{repo\t'The jj repo state and local branches',remote-tracking\t'The remote-tracking branches. Do not restore these if you\'d like to push after the undo'}"
complete -c jj -n "__fish_seen_subcommand_from op undo" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from op undo" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from op undo" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from op undo" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from op undo" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from op undo" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from op undo" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from op undo" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from op undo" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from op undo" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from op help; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "abandon" -d 'Abandon operation history'
complete -c jj -n "__fish_seen_subcommand_from op help; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "log" -d 'Show the operation log'
complete -c jj -n "__fish_seen_subcommand_from op help; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "restore" -d 'Create a new operation that restores the repo to an earlier state'
complete -c jj -n "__fish_seen_subcommand_from op help; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "undo" -d 'Create a new operation that undoes an earlier operation'
complete -c jj -n "__fish_seen_subcommand_from op help; and not __fish_seen_subcommand_from abandon log restore undo help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from parallelize" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from parallelize" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from parallelize" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from parallelize" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from parallelize" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from parallelize" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from parallelize" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from parallelize" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from parallelize" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from parallelize" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from prev" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from prev" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from prev" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from prev" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from prev" -s e -l edit -d 'Edit the parent directly, instead of moving the working-copy commit'
complete -c jj -n "__fish_seen_subcommand_from prev" -l conflict -d 'Jump to the previous conflicted ancestor'
complete -c jj -n "__fish_seen_subcommand_from prev" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from prev" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from prev" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from prev" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from prev" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from prev" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from rebase" -s b -l branch -d 'Rebase the whole branch relative to destination\'s ancestors (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from rebase" -s s -l source -d 'Rebase specified revision(s) together with their trees of descendants (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from rebase" -s r -l revisions -d 'Rebase the given revisions, rebasing descendants onto this revision\'s parent(s)' -r
complete -c jj -n "__fish_seen_subcommand_from rebase" -s d -l destination -d 'The revision(s) to rebase onto (can be repeated to create a merge commit)' -r
complete -c jj -n "__fish_seen_subcommand_from rebase" -s A -l insert-after -l after -d 'The revision(s) to insert after (can be repeated to create a merge commit)' -r
complete -c jj -n "__fish_seen_subcommand_from rebase" -s B -l insert-before -l before -d 'The revision(s) to insert before (can be repeated to create a merge commit)' -r
complete -c jj -n "__fish_seen_subcommand_from rebase" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from rebase" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from rebase" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from rebase" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from rebase" -l skip-empty -d 'If true, when rebasing would produce an empty commit, the commit is abandoned. It will not be abandoned if it was already empty before the rebase. Will never skip merge commits with multiple non-empty parents'
complete -c jj -n "__fish_seen_subcommand_from rebase" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from rebase" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from rebase" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from rebase" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from rebase" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from rebase" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from resolve" -s r -l revision -r
complete -c jj -n "__fish_seen_subcommand_from resolve" -l tool -d 'Specify 3-way merge tool to be used' -r
complete -c jj -n "__fish_seen_subcommand_from resolve" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from resolve" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from resolve" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from resolve" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from resolve" -s l -l list -d 'Instead of resolving one conflict, list all the conflicts'
complete -c jj -n "__fish_seen_subcommand_from resolve" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from resolve" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from resolve" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from resolve" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from resolve" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from resolve" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from restore" -l from -d 'Revision to restore from (source)' -r
complete -c jj -n "__fish_seen_subcommand_from restore" -l to -d 'Revision to restore into (destination)' -r
complete -c jj -n "__fish_seen_subcommand_from restore" -s c -l changes-in -d 'Undo the changes in a revision as compared to the merge of its parents' -r
complete -c jj -n "__fish_seen_subcommand_from restore" -s r -l revision -d 'Prints an error. DO NOT USE' -r
complete -c jj -n "__fish_seen_subcommand_from restore" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from restore" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from restore" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from restore" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from restore" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from restore" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from restore" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from restore" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from restore" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from restore" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from revert" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from revert" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from revert" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from revert" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from revert" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from revert" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from revert" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from revert" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from revert" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from revert" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from root" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from root" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from root" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from root" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from root" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from root" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from root" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from root" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from root" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from root" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from run" -s r -l revisions -d 'The revisions to change' -r
complete -c jj -n "__fish_seen_subcommand_from run" -s j -l jobs -d 'How many processes should run in parallel, uses by default all cores' -r
complete -c jj -n "__fish_seen_subcommand_from run" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from run" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from run" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from run" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from run" -s x -d 'A no-op option to match the interface of `git rebase -x`'
complete -c jj -n "__fish_seen_subcommand_from run" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from run" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from run" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from run" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from run" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from run" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from show" -s T -l template -d 'Render a revision using the given template' -r
complete -c jj -n "__fish_seen_subcommand_from show" -l tool -d 'Generate diff by external command' -r
complete -c jj -n "__fish_seen_subcommand_from show" -l context -d 'Number of lines of context to show' -r
complete -c jj -n "__fish_seen_subcommand_from show" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from show" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from show" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from show" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from show" -s r -d 'Ignored (but lets you pass `-r` for consistency with other commands)'
complete -c jj -n "__fish_seen_subcommand_from show" -s s -l summary -d 'For each path, show only whether it was modified, added, or deleted'
complete -c jj -n "__fish_seen_subcommand_from show" -l stat -d 'Show a histogram of the changes'
complete -c jj -n "__fish_seen_subcommand_from show" -l types -d 'For each path, show only its type before and after'
complete -c jj -n "__fish_seen_subcommand_from show" -l name-only -d 'For each path, show only its path'
complete -c jj -n "__fish_seen_subcommand_from show" -l git -d 'Show a Git-format diff'
complete -c jj -n "__fish_seen_subcommand_from show" -l color-words -d 'Show a word-level diff with changes indicated only by color'
complete -c jj -n "__fish_seen_subcommand_from show" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from show" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from show" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from show" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from show" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from show" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from sparse; and not __fish_seen_subcommand_from edit list reset set help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from sparse; and not __fish_seen_subcommand_from edit list reset set help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from sparse; and not __fish_seen_subcommand_from edit list reset set help" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from sparse; and not __fish_seen_subcommand_from edit list reset set help" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from sparse; and not __fish_seen_subcommand_from edit list reset set help" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from sparse; and not __fish_seen_subcommand_from edit list reset set help" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from sparse; and not __fish_seen_subcommand_from edit list reset set help" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from sparse; and not __fish_seen_subcommand_from edit list reset set help" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from sparse; and not __fish_seen_subcommand_from edit list reset set help" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from sparse; and not __fish_seen_subcommand_from edit list reset set help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from sparse; and not __fish_seen_subcommand_from edit list reset set help" -f -a "edit" -d 'Start an editor to update the patterns that are present in the working copy'
complete -c jj -n "__fish_seen_subcommand_from sparse; and not __fish_seen_subcommand_from edit list reset set help" -f -a "list" -d 'List the patterns that are currently present in the working copy'
complete -c jj -n "__fish_seen_subcommand_from sparse; and not __fish_seen_subcommand_from edit list reset set help" -f -a "reset" -d 'Reset the patterns to include all files in the working copy'
complete -c jj -n "__fish_seen_subcommand_from sparse; and not __fish_seen_subcommand_from edit list reset set help" -f -a "set" -d 'Update the patterns that are present in the working copy'
complete -c jj -n "__fish_seen_subcommand_from sparse; and not __fish_seen_subcommand_from edit list reset set help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from sparse edit" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from sparse edit" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from sparse edit" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from sparse edit" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from sparse edit" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from sparse edit" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from sparse edit" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from sparse edit" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from sparse edit" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from sparse edit" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from sparse list" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from sparse list" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from sparse list" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from sparse list" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from sparse list" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from sparse list" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from sparse list" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from sparse list" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from sparse list" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from sparse list" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from sparse reset" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from sparse reset" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from sparse reset" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from sparse reset" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from sparse reset" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from sparse reset" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from sparse reset" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from sparse reset" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from sparse reset" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from sparse reset" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from sparse set" -l add -d 'Patterns to add to the working copy' -r -F
complete -c jj -n "__fish_seen_subcommand_from sparse set" -l remove -d 'Patterns to remove from the working copy' -r -F
complete -c jj -n "__fish_seen_subcommand_from sparse set" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from sparse set" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from sparse set" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from sparse set" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from sparse set" -l clear -d 'Include no files in the working copy (combine with --add)'
complete -c jj -n "__fish_seen_subcommand_from sparse set" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from sparse set" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from sparse set" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from sparse set" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from sparse set" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from sparse set" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from sparse help; and not __fish_seen_subcommand_from edit list reset set help" -f -a "edit" -d 'Start an editor to update the patterns that are present in the working copy'
complete -c jj -n "__fish_seen_subcommand_from sparse help; and not __fish_seen_subcommand_from edit list reset set help" -f -a "list" -d 'List the patterns that are currently present in the working copy'
complete -c jj -n "__fish_seen_subcommand_from sparse help; and not __fish_seen_subcommand_from edit list reset set help" -f -a "reset" -d 'Reset the patterns to include all files in the working copy'
complete -c jj -n "__fish_seen_subcommand_from sparse help; and not __fish_seen_subcommand_from edit list reset set help" -f -a "set" -d 'Update the patterns that are present in the working copy'
complete -c jj -n "__fish_seen_subcommand_from sparse help; and not __fish_seen_subcommand_from edit list reset set help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from split" -l tool -d 'Specify diff editor to be used (implies --interactive)' -r
complete -c jj -n "__fish_seen_subcommand_from split" -s r -l revision -d 'The revision to split' -r
complete -c jj -n "__fish_seen_subcommand_from split" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from split" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from split" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from split" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from split" -s i -l interactive -d 'Interactively choose which parts to split. This is the default if no paths are provided'
complete -c jj -n "__fish_seen_subcommand_from split" -s p -l parallel -d 'Split the revision into two parallel revisions instead of a parent and child'
complete -c jj -n "__fish_seen_subcommand_from split" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from split" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from split" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from split" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from split" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from split" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from squash" -s r -l revision -d 'Revision to squash into its parent (default: @)' -r
complete -c jj -n "__fish_seen_subcommand_from squash" -l from -d 'Revision(s) to squash from (default: @)' -r
complete -c jj -n "__fish_seen_subcommand_from squash" -l into -l to -d 'Revision to squash into (default: @)' -r
complete -c jj -n "__fish_seen_subcommand_from squash" -s m -l message -d 'The description to use for squashed revision (don\'t open editor)' -r
complete -c jj -n "__fish_seen_subcommand_from squash" -l tool -d 'Specify diff editor to be used (implies --interactive)' -r
complete -c jj -n "__fish_seen_subcommand_from squash" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from squash" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from squash" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from squash" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from squash" -s u -l use-destination-message -d 'Use the description of the destination revision and discard the description(s) of the source revision(s)'
complete -c jj -n "__fish_seen_subcommand_from squash" -s i -l interactive -d 'Interactively choose which parts to squash'
complete -c jj -n "__fish_seen_subcommand_from squash" -l keep-emptied -d 'The source revision will not be abandoned'
complete -c jj -n "__fish_seen_subcommand_from squash" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from squash" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from squash" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from squash" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from squash" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from squash" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from status" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from status" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from status" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from status" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from status" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from status" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from status" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from status" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from status" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from status" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from st" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from st" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from st" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from st" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from st" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from st" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from st" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from st" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from st" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from st" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from tag; and not __fish_seen_subcommand_from list l help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from tag; and not __fish_seen_subcommand_from list l help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from tag; and not __fish_seen_subcommand_from list l help" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from tag; and not __fish_seen_subcommand_from list l help" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from tag; and not __fish_seen_subcommand_from list l help" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from tag; and not __fish_seen_subcommand_from list l help" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from tag; and not __fish_seen_subcommand_from list l help" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from tag; and not __fish_seen_subcommand_from list l help" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from tag; and not __fish_seen_subcommand_from list l help" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from tag; and not __fish_seen_subcommand_from list l help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from tag; and not __fish_seen_subcommand_from list l help" -f -a "list" -d 'List tags'
complete -c jj -n "__fish_seen_subcommand_from tag; and not __fish_seen_subcommand_from list l help" -f -a "l" -d 'List tags'
complete -c jj -n "__fish_seen_subcommand_from tag; and not __fish_seen_subcommand_from list l help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from tag list" -s T -l template -d 'Render each tag using the given template' -r
complete -c jj -n "__fish_seen_subcommand_from tag list" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from tag list" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from tag list" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from tag list" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from tag list" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from tag list" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from tag list" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from tag list" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from tag list" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from tag list" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from tag l" -s T -l template -d 'Render each tag using the given template' -r
complete -c jj -n "__fish_seen_subcommand_from tag l" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from tag l" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from tag l" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from tag l" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from tag l" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from tag l" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from tag l" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from tag l" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from tag l" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from tag l" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from tag help; and not __fish_seen_subcommand_from list help" -f -a "list" -d 'List tags'
complete -c jj -n "__fish_seen_subcommand_from tag help; and not __fish_seen_subcommand_from list help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -f -a "completion" -d 'Print a command-line-completion script'
complete -c jj -n "__fish_seen_subcommand_from util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -f -a "gc" -d 'Run backend-dependent garbage collection'
complete -c jj -n "__fish_seen_subcommand_from util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -f -a "mangen" -d 'Print a ROFF (manpage)'
complete -c jj -n "__fish_seen_subcommand_from util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -f -a "markdown-help" -d 'Print the CLI help for all subcommands in Markdown'
complete -c jj -n "__fish_seen_subcommand_from util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -f -a "config-schema" -d 'Print the JSON schema for the jj TOML config format'
complete -c jj -n "__fish_seen_subcommand_from util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from util completion" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from util completion" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from util completion" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from util completion" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from util completion" -l bash -d 'Deprecated. Use the SHELL positional argument instead'
complete -c jj -n "__fish_seen_subcommand_from util completion" -l fish -d 'Deprecated. Use the SHELL positional argument instead'
complete -c jj -n "__fish_seen_subcommand_from util completion" -l zsh -d 'Deprecated. Use the SHELL positional argument instead'
complete -c jj -n "__fish_seen_subcommand_from util completion" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from util completion" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from util completion" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from util completion" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from util completion" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from util completion" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from util gc" -l expire -d 'Time threshold' -r
complete -c jj -n "__fish_seen_subcommand_from util gc" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from util gc" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from util gc" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from util gc" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from util gc" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from util gc" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from util gc" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from util gc" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from util gc" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from util gc" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from util mangen" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from util mangen" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from util mangen" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from util mangen" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from util mangen" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from util mangen" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from util mangen" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from util mangen" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from util mangen" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from util mangen" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from util markdown-help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from util markdown-help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from util markdown-help" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from util markdown-help" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from util markdown-help" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from util markdown-help" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from util markdown-help" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from util markdown-help" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from util markdown-help" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from util markdown-help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from util config-schema" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from util config-schema" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from util config-schema" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from util config-schema" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from util config-schema" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from util config-schema" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from util config-schema" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from util config-schema" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from util config-schema" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from util config-schema" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from util help; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -f -a "completion" -d 'Print a command-line-completion script'
complete -c jj -n "__fish_seen_subcommand_from util help; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -f -a "gc" -d 'Run backend-dependent garbage collection'
complete -c jj -n "__fish_seen_subcommand_from util help; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -f -a "mangen" -d 'Print a ROFF (manpage)'
complete -c jj -n "__fish_seen_subcommand_from util help; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -f -a "markdown-help" -d 'Print the CLI help for all subcommands in Markdown'
complete -c jj -n "__fish_seen_subcommand_from util help; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -f -a "config-schema" -d 'Print the JSON schema for the jj TOML config format'
complete -c jj -n "__fish_seen_subcommand_from util help; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from undo" -l what -d 'What portions of the local state to restore (can be repeated)' -r -f -a "{repo\t'The jj repo state and local branches',remote-tracking\t'The remote-tracking branches. Do not restore these if you\'d like to push after the undo'}"
complete -c jj -n "__fish_seen_subcommand_from undo" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from undo" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from undo" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from undo" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from undo" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from undo" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from undo" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from undo" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from undo" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from undo" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from unsquash" -s r -l revision -r
complete -c jj -n "__fish_seen_subcommand_from unsquash" -l tool -d 'Specify diff editor to be used (implies --interactive)' -r
complete -c jj -n "__fish_seen_subcommand_from unsquash" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from unsquash" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from unsquash" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from unsquash" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from unsquash" -s i -l interactive -d 'Interactively choose which parts to unsquash'
complete -c jj -n "__fish_seen_subcommand_from unsquash" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from unsquash" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from unsquash" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from unsquash" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from unsquash" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from unsquash" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from untrack" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from untrack" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from untrack" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from untrack" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from untrack" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from untrack" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from untrack" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from untrack" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from untrack" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from untrack" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from version" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from version" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from version" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from version" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from version" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from version" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from version" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from version" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from version" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from version" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add forget list root update-stale help" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add forget list root update-stale help" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add forget list root update-stale help" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add forget list root update-stale help" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add forget list root update-stale help" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add forget list root update-stale help" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add forget list root update-stale help" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add forget list root update-stale help" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add forget list root update-stale help" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add forget list root update-stale help" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add forget list root update-stale help" -f -a "add" -d 'Add a workspace'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add forget list root update-stale help" -f -a "forget" -d 'Stop tracking a workspace\'s working-copy commit in the repo'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add forget list root update-stale help" -f -a "list" -d 'List workspaces'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add forget list root update-stale help" -f -a "root" -d 'Show the current workspace root directory'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add forget list root update-stale help" -f -a "update-stale" -d 'Update a workspace that has become stale'
complete -c jj -n "__fish_seen_subcommand_from workspace; and not __fish_seen_subcommand_from add forget list root update-stale help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from workspace add" -l name -d 'A name for the workspace' -r
complete -c jj -n "__fish_seen_subcommand_from workspace add" -s r -l revision -d 'A list of parent revisions for the working-copy commit of the newly created workspace. You may specify nothing, or any number of parents' -r
complete -c jj -n "__fish_seen_subcommand_from workspace add" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from workspace add" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from workspace add" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace add" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace add" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from workspace add" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from workspace add" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from workspace add" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from workspace add" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from workspace add" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from workspace forget" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from workspace forget" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from workspace forget" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace forget" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace forget" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from workspace forget" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from workspace forget" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from workspace forget" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from workspace forget" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from workspace forget" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from workspace list" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from workspace list" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from workspace list" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace list" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace list" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from workspace list" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from workspace list" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from workspace list" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from workspace list" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from workspace list" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from workspace root" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from workspace root" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from workspace root" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace root" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace root" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from workspace root" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from workspace root" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from workspace root" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from workspace root" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from workspace root" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from workspace update-stale" -s R -l repository -d 'Path to repository to operate on' -r -f -a "(__fish_complete_directories)"
complete -c jj -n "__fish_seen_subcommand_from workspace update-stale" -l at-operation -l at-op -d 'Operation to load the repo at' -r
complete -c jj -n "__fish_seen_subcommand_from workspace update-stale" -l color -d 'When to colorize output (always, never, debug, auto)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace update-stale" -l config-toml -d 'Additional configuration options (can be repeated)' -r
complete -c jj -n "__fish_seen_subcommand_from workspace update-stale" -l ignore-working-copy -d 'Don\'t snapshot the working copy, and don\'t update it'
complete -c jj -n "__fish_seen_subcommand_from workspace update-stale" -l ignore-immutable -d 'Allow rewriting immutable commits'
complete -c jj -n "__fish_seen_subcommand_from workspace update-stale" -l debug -d 'Enable debug logging'
complete -c jj -n "__fish_seen_subcommand_from workspace update-stale" -l quiet -d 'Silence non-primary command output'
complete -c jj -n "__fish_seen_subcommand_from workspace update-stale" -l no-pager -d 'Disable the pager'
complete -c jj -n "__fish_seen_subcommand_from workspace update-stale" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c jj -n "__fish_seen_subcommand_from workspace help; and not __fish_seen_subcommand_from add forget list root update-stale help" -f -a "add" -d 'Add a workspace'
complete -c jj -n "__fish_seen_subcommand_from workspace help; and not __fish_seen_subcommand_from add forget list root update-stale help" -f -a "forget" -d 'Stop tracking a workspace\'s working-copy commit in the repo'
complete -c jj -n "__fish_seen_subcommand_from workspace help; and not __fish_seen_subcommand_from add forget list root update-stale help" -f -a "list" -d 'List workspaces'
complete -c jj -n "__fish_seen_subcommand_from workspace help; and not __fish_seen_subcommand_from add forget list root update-stale help" -f -a "root" -d 'Show the current workspace root directory'
complete -c jj -n "__fish_seen_subcommand_from workspace help; and not __fish_seen_subcommand_from add forget list root update-stale help" -f -a "update-stale" -d 'Update a workspace that has become stale'
complete -c jj -n "__fish_seen_subcommand_from workspace help; and not __fish_seen_subcommand_from add forget list root update-stale help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "abandon" -d 'Abandon a revision'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "backout" -d 'Apply the reverse of a revision on top of another revision'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "branch" -d 'Manage branches'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "cat" -d 'Print contents of files in a revision'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "checkout" -d 'Create a new, empty change and edit it in the working copy (DEPRECATED, use `jj new`)'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "chmod" -d 'Sets or removes the executable bit for paths in the repo'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "commit" -d 'Update the description and create a new change on top'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "config" -d 'Manage config options'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "debug" -d 'Low-level commands not intended for users'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "describe" -d 'Update the change description or other metadata'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "diff" -d 'Compare file contents between two revisions'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "diffedit" -d 'Touch up the content changes in a revision with a diff editor'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "duplicate" -d 'Create a new change with the same content as an existing one'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "edit" -d 'Sets the specified revision as the working-copy revision'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "file" -d 'File operations'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "files" -d 'List files in a revision (DEPRECATED use `jj file list`)'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "fix" -d 'Update files with formatting fixes or other changes'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "git" -d 'Commands for working with Git remotes and the underlying Git repo'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "init" -d 'Create a new repo in the given directory'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "interdiff" -d 'Compare the changes of two commits'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "log" -d 'Show revision history'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "merge" -d 'Merge work from multiple branches (DEPRECATED, use `jj new`)'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "move" -d 'Move changes from one revision into another (DEPRECATED, use `jj squash`)'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "new" -d 'Create a new, empty change and (by default) edit it in the working copy'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "next" -d 'Move the working-copy commit to the child revision'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "obslog" -d 'Show how a change has evolved over time'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "operation" -d 'Commands for working with the operation log'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "parallelize" -d 'Parallelize revisions by making them siblings'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "prev" -d 'Change the working copy revision relative to the parent revision'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "rebase" -d 'Move revisions to different parent(s)'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "resolve" -d 'Resolve a conflicted file with an external merge tool'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "restore" -d 'Restore paths from another revision'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "revert" -d 'A dummy command that accepts any arguments'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "root" -d 'Show the current workspace root directory'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "run" -d 'Run a command across a set of revisions.'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "show" -d 'Show commit description and changes in a revision'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "sparse" -d 'Manage which paths from the working-copy commit are present in the working copy'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "split" -d 'Split a revision in two'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "squash" -d 'Move changes from a revision into another revision'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "status" -d 'Show high-level repo status'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "tag" -d 'Manage tags'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "util" -d 'Infrequently used commands such as for generating shell completions'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "undo" -d 'Undo an operation (shortcut for `jj op undo`)'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "unsquash" -d 'Move changes from a revision\'s parent into the revision'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "untrack" -d 'Stop tracking specified paths in the working copy'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "version" -d 'Display version information'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "workspace" -d 'Commands for working with workspaces'
complete -c jj -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from abandon backout branch cat checkout chmod commit config debug describe diff diffedit duplicate edit file files fix git init interdiff log merge move new next obslog operation parallelize prev rebase resolve restore revert root run show sparse split squash status tag util undo unsquash untrack version workspace help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c jj -n "__fish_seen_subcommand_from help branch; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack" -f -a "create" -d 'Create a new branch'
complete -c jj -n "__fish_seen_subcommand_from help branch; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack" -f -a "delete" -d 'Delete an existing branch and propagate the deletion to remotes on the next push'
complete -c jj -n "__fish_seen_subcommand_from help branch; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack" -f -a "forget" -d 'Forget everything about a branch, including its local and remote targets'
complete -c jj -n "__fish_seen_subcommand_from help branch; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack" -f -a "list" -d 'List branches and their targets'
complete -c jj -n "__fish_seen_subcommand_from help branch; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack" -f -a "move" -d 'Move existing branches to target revision'
complete -c jj -n "__fish_seen_subcommand_from help branch; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack" -f -a "rename" -d 'Rename `old` branch name to `new` branch name'
complete -c jj -n "__fish_seen_subcommand_from help branch; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack" -f -a "set" -d 'Create or update a branch to point to a certain commit'
complete -c jj -n "__fish_seen_subcommand_from help branch; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack" -f -a "track" -d 'Start tracking given remote branches'
complete -c jj -n "__fish_seen_subcommand_from help branch; and not __fish_seen_subcommand_from create delete forget list move rename set track untrack" -f -a "untrack" -d 'Stop tracking given remote branches'
complete -c jj -n "__fish_seen_subcommand_from help config; and not __fish_seen_subcommand_from edit get list path set" -f -a "edit" -d 'Start an editor on a jj config file'
complete -c jj -n "__fish_seen_subcommand_from help config; and not __fish_seen_subcommand_from edit get list path set" -f -a "get" -d 'Get the value of a given config option.'
complete -c jj -n "__fish_seen_subcommand_from help config; and not __fish_seen_subcommand_from edit get list path set" -f -a "list" -d 'List variables set in config file, along with their values'
complete -c jj -n "__fish_seen_subcommand_from help config; and not __fish_seen_subcommand_from edit get list path set" -f -a "path" -d 'Print the path to the config file'
complete -c jj -n "__fish_seen_subcommand_from help config; and not __fish_seen_subcommand_from edit get list path set" -f -a "set" -d 'Update config file to set the given option to a given value'
complete -c jj -n "__fish_seen_subcommand_from help debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy" -f -a "fileset" -d 'Parse fileset expression'
complete -c jj -n "__fish_seen_subcommand_from help debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy" -f -a "index" -d 'Show commit index stats'
complete -c jj -n "__fish_seen_subcommand_from help debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy" -f -a "local-working-copy" -d 'Show information about the local working copy state'
complete -c jj -n "__fish_seen_subcommand_from help debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy" -f -a "operation" -d 'Show information about an operation and its view'
complete -c jj -n "__fish_seen_subcommand_from help debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy" -f -a "reindex" -d 'Rebuild commit index'
complete -c jj -n "__fish_seen_subcommand_from help debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy" -f -a "revset" -d 'Evaluate revset to full commit IDs'
complete -c jj -n "__fish_seen_subcommand_from help debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy" -f -a "snapshot" -d 'Trigger a snapshot in the op log'
complete -c jj -n "__fish_seen_subcommand_from help debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy" -f -a "template" -d 'Parse a template'
complete -c jj -n "__fish_seen_subcommand_from help debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy" -f -a "tree" -d 'List the recursive entries of a tree'
complete -c jj -n "__fish_seen_subcommand_from help debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy" -f -a "watchman"
complete -c jj -n "__fish_seen_subcommand_from help debug; and not __fish_seen_subcommand_from fileset index local-working-copy operation reindex revset snapshot template tree watchman working-copy" -f -a "working-copy" -d 'Show information about the working copy state'
complete -c jj -n "__fish_seen_subcommand_from help debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock" -f -a "status" -d 'Check whether `watchman` is enabled and whether it\'s correctly installed'
complete -c jj -n "__fish_seen_subcommand_from help debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock" -f -a "query-clock"
complete -c jj -n "__fish_seen_subcommand_from help debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock" -f -a "query-changed-files"
complete -c jj -n "__fish_seen_subcommand_from help debug watchman; and not __fish_seen_subcommand_from status query-clock query-changed-files reset-clock" -f -a "reset-clock"
complete -c jj -n "__fish_seen_subcommand_from help file; and not __fish_seen_subcommand_from chmod list show" -f -a "chmod" -d 'Sets or removes the executable bit for paths in the repo'
complete -c jj -n "__fish_seen_subcommand_from help file; and not __fish_seen_subcommand_from chmod list show" -f -a "list" -d 'List files in a revision'
complete -c jj -n "__fish_seen_subcommand_from help file; and not __fish_seen_subcommand_from chmod list show" -f -a "show" -d 'Print contents of files in a revision'
complete -c jj -n "__fish_seen_subcommand_from help git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule" -f -a "clone" -d 'Create a new repo backed by a clone of a Git repo'
complete -c jj -n "__fish_seen_subcommand_from help git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule" -f -a "export" -d 'Update the underlying Git repo with changes made in the repo'
complete -c jj -n "__fish_seen_subcommand_from help git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule" -f -a "fetch" -d 'Fetch from a Git remote'
complete -c jj -n "__fish_seen_subcommand_from help git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule" -f -a "import" -d 'Update repo with changes made in the underlying Git repo'
complete -c jj -n "__fish_seen_subcommand_from help git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule" -f -a "init" -d 'Create a new Git backed repo'
complete -c jj -n "__fish_seen_subcommand_from help git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule" -f -a "push" -d 'Push to a Git remote'
complete -c jj -n "__fish_seen_subcommand_from help git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule" -f -a "remote" -d 'Manage Git remotes'
complete -c jj -n "__fish_seen_subcommand_from help git; and not __fish_seen_subcommand_from clone export fetch import init push remote submodule" -f -a "submodule" -d 'FOR INTERNAL USE ONLY Interact with git submodules'
complete -c jj -n "__fish_seen_subcommand_from help git remote; and not __fish_seen_subcommand_from add list remove rename set-url" -f -a "add" -d 'Add a Git remote'
complete -c jj -n "__fish_seen_subcommand_from help git remote; and not __fish_seen_subcommand_from add list remove rename set-url" -f -a "list" -d 'List Git remotes'
complete -c jj -n "__fish_seen_subcommand_from help git remote; and not __fish_seen_subcommand_from add list remove rename set-url" -f -a "remove" -d 'Remove a Git remote and forget its branches'
complete -c jj -n "__fish_seen_subcommand_from help git remote; and not __fish_seen_subcommand_from add list remove rename set-url" -f -a "rename" -d 'Rename a Git remote'
complete -c jj -n "__fish_seen_subcommand_from help git remote; and not __fish_seen_subcommand_from add list remove rename set-url" -f -a "set-url" -d 'Set the URL of a Git remote'
complete -c jj -n "__fish_seen_subcommand_from help git submodule; and not __fish_seen_subcommand_from print-gitmodules" -f -a "print-gitmodules" -d 'Print the relevant contents from .gitmodules. For debugging purposes only'
complete -c jj -n "__fish_seen_subcommand_from help operation; and not __fish_seen_subcommand_from abandon log restore undo" -f -a "abandon" -d 'Abandon operation history'
complete -c jj -n "__fish_seen_subcommand_from help operation; and not __fish_seen_subcommand_from abandon log restore undo" -f -a "log" -d 'Show the operation log'
complete -c jj -n "__fish_seen_subcommand_from help operation; and not __fish_seen_subcommand_from abandon log restore undo" -f -a "restore" -d 'Create a new operation that restores the repo to an earlier state'
complete -c jj -n "__fish_seen_subcommand_from help operation; and not __fish_seen_subcommand_from abandon log restore undo" -f -a "undo" -d 'Create a new operation that undoes an earlier operation'
complete -c jj -n "__fish_seen_subcommand_from help sparse; and not __fish_seen_subcommand_from edit list reset set" -f -a "edit" -d 'Start an editor to update the patterns that are present in the working copy'
complete -c jj -n "__fish_seen_subcommand_from help sparse; and not __fish_seen_subcommand_from edit list reset set" -f -a "list" -d 'List the patterns that are currently present in the working copy'
complete -c jj -n "__fish_seen_subcommand_from help sparse; and not __fish_seen_subcommand_from edit list reset set" -f -a "reset" -d 'Reset the patterns to include all files in the working copy'
complete -c jj -n "__fish_seen_subcommand_from help sparse; and not __fish_seen_subcommand_from edit list reset set" -f -a "set" -d 'Update the patterns that are present in the working copy'
complete -c jj -n "__fish_seen_subcommand_from help tag; and not __fish_seen_subcommand_from list" -f -a "list" -d 'List tags'
complete -c jj -n "__fish_seen_subcommand_from help util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema" -f -a "completion" -d 'Print a command-line-completion script'
complete -c jj -n "__fish_seen_subcommand_from help util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema" -f -a "gc" -d 'Run backend-dependent garbage collection'
complete -c jj -n "__fish_seen_subcommand_from help util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema" -f -a "mangen" -d 'Print a ROFF (manpage)'
complete -c jj -n "__fish_seen_subcommand_from help util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema" -f -a "markdown-help" -d 'Print the CLI help for all subcommands in Markdown'
complete -c jj -n "__fish_seen_subcommand_from help util; and not __fish_seen_subcommand_from completion gc mangen markdown-help config-schema" -f -a "config-schema" -d 'Print the JSON schema for the jj TOML config format'
complete -c jj -n "__fish_seen_subcommand_from help workspace; and not __fish_seen_subcommand_from add forget list root update-stale" -f -a "add" -d 'Add a workspace'
complete -c jj -n "__fish_seen_subcommand_from help workspace; and not __fish_seen_subcommand_from add forget list root update-stale" -f -a "forget" -d 'Stop tracking a workspace\'s working-copy commit in the repo'
complete -c jj -n "__fish_seen_subcommand_from help workspace; and not __fish_seen_subcommand_from add forget list root update-stale" -f -a "list" -d 'List workspaces'
complete -c jj -n "__fish_seen_subcommand_from help workspace; and not __fish_seen_subcommand_from add forget list root update-stale" -f -a "root" -d 'Show the current workspace root directory'
complete -c jj -n "__fish_seen_subcommand_from help workspace; and not __fish_seen_subcommand_from add forget list root update-stale" -f -a "update-stale" -d 'Update a workspace that has become stale'

function __complete_jj_all_branches
    jj branch list --all-remotes --no-pager | sed 's/:.*//' | awk '{print $1}'
end

complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from delete" -f -a "(__complete_jj_all_branches)" -d 'Branch to delete'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from rename" -f -a "(__complete_jj_all_branches)" -d 'Branch to rename'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from set" -f -a "(__complete_jj_all_branches)" -d 'Branch to update'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from move" -f -a "(__complete_jj_all_branches)" -d 'Branch to move'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from track" -f -a "(__complete_jj_all_branches)" -d 'Branch to track'
complete -c jj -n "__fish_seen_subcommand_from branch; and __fish_seen_subcommand_from untrack" -f -a "(__complete_jj_all_branches)" -d 'Branch to untrack'
