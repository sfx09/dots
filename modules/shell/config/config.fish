status is-login; and begin

    # Login shell initialisation
    test (tty) = /dev/tty1; and exec Hyprland

end

status is-interactive; and begin

    # Abbreviations
    abbr --add -- cd z
    abbr --add -- la 'eza -a'
    abbr --add -- ll 'eza -l'
    abbr --add -- ls eza
    abbr --add -- lx 'eza -la'
    abbr --add -- vim nvim
    abbr --add -- tls 'tmux ls'
    abbr --add -- tks 'tmux kill-server'
    abbr --add -- tr 'tmux rename-window'
    abbr --add -- ga 'git add'
    abbr --add -- gc 'git commit'
    abbr --add -- gd 'git diff'
    abbr --add -- gs 'git status'
    abbr --add -- gl 'git log --oneline'
    abbr --add -- gp 'git push'
    abbr --add -- gh 'git stash'

    # Aliases

    # Interactive shell initialisation
    set -g fish_key_bindings fish_vi_key_bindings
    bind -M insert \cy accept-autosuggestion
    bind -M insert \cf 'sessionizer; commandline -f repaint'
    bind -M insert \cp up-or-search
    bind -M insert \cn down-or-search
    set fish_greeting

    set GOPATH ~/.cache/go

    fish_add_path ~/.cache/go/bin/

end
