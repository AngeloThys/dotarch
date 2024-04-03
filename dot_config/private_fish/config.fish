if status is-interactive
    # Commands to run in interactive sessions can go here

    # Path
    fish_add_path ~/.icons
    fish_add_path /usr/share/icons
    fish_add_path ~/.local/share/icons

    # Environment variables
    set -xg EDITOR nvim
    set -xg VISUAL nvim

    # Abbreviations
    abbr --add dotdot --regex '^\.\.+$' --function multicd
    abbr --add !! --position anywhere --function last_history_item
    abbr -a man batman
    abbr -a vim "$EDITOR"
    abbr -a v "$EDITOR"
    abbr -a wifi nmtui
    abbr -a dot cd ~/dotarch
    abbr -a ls eza -ah --icons
    abbr -a ll eza -lah --icons
    abbr -a lt eza -ah --tree --level=1 --icons
    abbr -a c clear

    # Git
    abbr -a gs git status
    abbr -a ga git add
    abbr -a gc git commit -m
    abbr -a gp git push
    abbr -a gpl git pull
    abbr -a gst git stash
    abbr -a gcheck git checkout
    abbr -a gcredential git config credential.helper store

    # Vi keybindings
    set -g fish_key_bindings fish_vi_key_bindings

    # Vi cursor shapes
    set fish_cursor_default block blink
    set fish_cursor_insert line blink
    set fish_cursor_replace_one underscore blink
    set fish_cursor_replace underscore
    set fish_cursor_external line blink
    set fish_cursor_visual block

    # Starship
    starship init fish | source

    # Tmux
    if not set -q TMUX
        tmux attach -t base || tmux new -s base
    end
end
