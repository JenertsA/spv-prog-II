#!/bin/sh

# Exit on error.
set -e

# Run bundle in case if gems are changed, but image is not rebuilt.
bundle

# Run the CMD from Dockerfile.
exec "$@"
