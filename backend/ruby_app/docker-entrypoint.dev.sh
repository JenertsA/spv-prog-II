#!/bin/sh

# Exit on error.
set -e

# Run bundle in case if gems are changed, but image is not rebuilt.
bundle

# Create tmux session and windows for bin/spv console
tmux new -s development-session -d -n ruby_app && tmux ls
tmux select-pane -T development_session:0:1 -T 'ruby_app: shell'

# Run the CMD from Dockerfile.
exec "$@"
