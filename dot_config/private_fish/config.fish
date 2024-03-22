if status is-interactive
    # Commands to run in interactive sessions can go here

    # Environment variables
    set -xg EDITOR nvim

    # Abbreviations
    abbr --add dotdot --regex '^\.\.+$' --function multicd
    abbr --add !! --position anywhere --function last_history_item
    abbr -a vim "$EDITOR" 
    abbr -a v "$EDITOR"
    abbr -a wifi nmtui
    abbr -a dot cd ~/dotarch
    abbr -a ls eza -ah --icons
    abbr -a ll eza -lah --icons
    abbr -a lt eza -ah --tree --level=1 --icons
    abbr -a c clear

    # Git
    abbr -a  gs git status
    abbr -a  ga git add
    abbr -a  gc git commit -m
    abbr -a  gp git push
    abbr -a  gpl git pull
    abbr -a  gst git stash
    abbr -a  gcheck git checkout
    abbr -a  gcredential git config credential.helper store
end
