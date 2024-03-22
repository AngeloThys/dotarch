#!/usr/bin/zsh
session="sesh"
# check if in tmux session
if [ -n "$TMUX" ]; then
	current_session=$(tmux display-message -p '#S')
	if [ "$current_session" = "$session" ]; then
		echo "Already attached to $session"
	else
		tmux switch-client -t $session
	fi
else
	tmux has-session -t $session 2>/dev/null
	if [ $? != 0 ]; then
		tmux new -s $session
	else
		tmux attach-session -t $session
	fi
fi
