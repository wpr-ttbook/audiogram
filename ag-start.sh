#!/bin/bash

git pull

echo "Starting WNYC Audiogram Tool"

tmux new-session -d "redis-server"
tmux new-session -d "NPM run worker"
tmux new-session -d "NPM run worker"
tmux new-session -d "NPM start"

echo "All systems go! You can access the tool in your browser at ttbook.org/staff/audiogram."
exit 0
