#! /usr/bin/fish
set session "ss"
# check if in tmux session
if test -n "$TMUX"
    set current_session $(tmux display-message -p '#S')
    if test "$current_session" = "$session"
        echo "Already attached to $session"
    else
        tmux switch-client -t $session
    end
else
    if not tmux has-session -t $session
        tmux new -s $session
    else
        tmux attach-session -t $session
    end
end

