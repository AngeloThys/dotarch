if status is-interactive
    # Commands to run in interactive sessions can go here

    # Path
    fish_add_path ~/.icons
    fish_add_path /usr/share/icons
    fish_add_path ~/.local/share/icons
    fish_add_path ~/.rbenv/versions/3.3.0/bin/
    fish_add_path ~/go/bin/

    # Environment variables
    set -xg EDITOR nvim
    set -xg VISUAL nvim
    set -xg EZA_ICONS_AUTO
    set -xg fzf_preview_dir_cmd eza --color=always --icons=always --all
    set fzf_fd_opts --hidden --follow --max-depth 5
    set -xg fzf_diff_highlighter delta --paging=never --width=20
    set -xg SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket
    set -xg nvm_default_version latest

    # Python
    abbr -a py python

    # Abbreviations
    abbr --add dotdot --regex '^\.\.+$' --function multicd
    abbr --add !! --position anywhere --function last_history_item
    abbr -a man batman
    abbr -a cat bat
    abbr -a vim "$EDITOR"
    abbr -a v "$EDITOR"
    abbr -a wifi nmtui
    abbr -a dot cd ~/dotarch
    abbr -a ls eza -ahgH
    abbr -a ll eza -lahgH
    abbr -a lt eza -ah --tree --level=1
    abbr -a c clear
    abbr -a cl clear
    abbr -a wlc wl-copy

    # Chezmoi
    abbr -a cm chezmoi
    abbr -a cms chezmoi status
    abbr -a cma chezmoi add
    abbr -a cmr chezmoi re-add
    abbr -a cmc chezmoi cd
    abbr -a cmd chezmoi diff
    abbr -a cmu chezmoi update
    abbr -a cmf chezmoi forget
    abbr -a cmm chezmoi managed
    abbr -a cmap chezmoi apply
    abbr -a cme chezmoi edit

    # Git
    abbr -a gs git status
    abbr -a ga git add
    abbr -a gc git commit -S -m
    abbr -a gp git push
    abbr -a gd git diff
    abbr -a gds git diff --staged
    abbr -a gl git log
    abbr -a glg git log --graph --oneline --all
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

    # pyenv
    set -gx PYENV_ROOT $HOME/.pyenv
    fish_add_path $PYENV_ROOT/bin
    pyenv init - | source

    # rubyenv
    status --is-interactive; and rbenv init - fish | source

    # Fzf
    fzf --fish | source

    # zoxide
    zoxide init fish | source

    # Starship
    starship init fish | source

    # Tmux
    if not set -q TMUX
        tmux attach -t base || tmux new -s base
    end
end

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish
