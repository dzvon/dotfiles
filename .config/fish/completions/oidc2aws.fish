# Fish shell completions for oidc2aws
# Save this file as ~/.config/fish/completions/oidc2aws.fish

# Basic command description
complete -c oidc2aws -d "Generate AWS credentials using OIDC provider"

# Flags
complete -c oidc2aws -s e -l env -d "Output environment variables format"
complete -c oidc2aws -s l -l login -d "Open AWS Console login in browser"
complete -c oidc2aws -s a -l alias -d "Use alias from oidcconfig file" -xa "(__fish_oidc2aws_aliases)"
complete -c oidc2aws -s s -l shell -d "Specify shell type for env output" -xa "bash zsh csh fish"
complete -c oidc2aws -l sourcerole -d "(Deprecated) Source role for role chaining" -r

# Complete AWS role ARNs - basic pattern matching
complete -c oidc2aws -n "not __fish_seen_subcommand_from -alias --alias" -a "arn:aws:iam::" -d "AWS IAM Role ARN"


# Function to extract aliases from oidcconfig
function __fish_oidc2aws_aliases
    set -l config_file "$HOME/.oidc2aws/oidcconfig"
    if test -f "$config_file"
        grep -E '^\[alias\.' "$config_file" 2>/dev/null | sed 's/^\[alias\.\(.*\)\]$/\1/'
    end
end