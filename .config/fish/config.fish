set -x DOTFILES $HOME/.dotfiles

set -x PATH \
    $PATH \
    $HOME/.cargo/bin \
    $HOME/.yarn/bin \
    $HOME/.npm-global/bin \
    $HOME/bin \
    $HOME/.local/bin \
    $DOTFILES/bin \
    /usr/local/bin \
    /usr/local/sbin \
    /usr/bin \
    /bin \
    /usr/sbin \
    /sbin

set -x GOPATH $HOME/GoWork
set -x PATH $PATH $GOPATH/bin

set -x FLYCTL_INSTALL $HOME/.fly
set -x PATH $PATH $FLYCTL_INSTALL/bin

if type -q -f nvim
    set -x EDITOR nvim
    set -x VISUAL nvim
end

if status is-interactive
    # Key bindings.
    bind --mode insert \cP up-or-search
    bind --mode insert \cN down-or-search
    bind --mode insert \cE accept-autosuggestion
    bind --mode insert \cR history-pager


    function proxy_on --argument proxy
        if not string match -r '^(http|https|socks5|socks5h)://[^/]+:[0-9]+$' $proxy > /dev/null
            echo "Invalid proxy address. Please provide a valid http or https proxy address."
            return 1
        end

        set -xg http_proxy $proxy
        set -xg https_proxy $proxy
        set -xg ftp_proxy $proxy
        set -xg HTTP_PROXY $proxy
        set -xg HTTPS_PROXY $proxy
        set -xg FTP_PROXY $proxy
        set -xg no_proxy "localhost, 127.0.0.1, ::1"
        echo "Proxy environment variable set to $proxy"
    end

    function proxy_off
        set -e http_proxy
        set -e https_proxy
        set -e ftp_proxy
        set -e HTTP_PROXY
        set -e HTTPS_PROXY
        set -e FTP_PROXY
        set -e no_proxy
        echo "Proxy environment variables unset"
    end

    function generate_random --argument length
        if not string match -r '^[0-9]+$' $length > /dev/null
            echo "Invalid length. Please provide a valid length."
            return 1
        end

        openssl rand -base64 $length | cut -c1-$length | tr -d '\n'
    end

    function fish_greeting
        # If has fortune installed, display a random fortune.
        if type -q -f fortune
            fortune
        end
    end

    # Aliases.
    alias df 'df -h'
    alias dl 'cd ~/Downloads'
    alias doc 'cd ~/Documents'
    alias dt 'cd ~/Desktop'
    alias ssh 'env TERM=xterm-256color ssh'
    alias sudo 'sudo -E'

    # Aliases for jj
    alias jci 'jj ci'
    alias jd 'jj diff'
    alias jp 'jj git push -r @-'
    alias jst 'jj status'
    alias jf 'jj git fetch'
end

if status is-login
    # If running in Wayland, set environment variables.
    if test -n "$WAYLAND_DISPLAY"
        set -xg QT_IM_MODULE fcitx
        # set -xg GTK_IM_MODULE fcitx/xim
        set -xg XMODIFIERS @im=fcitx
    end
end

fish_config prompt choose informative_vcs

set -gx TF_PLUGIN_CACHE_DIR $HOME/.terraform.d/plugin-cache
