#!/bin/bash
set -e

# Ensure cache directories exist with proper permissions
mkdir -p /home/marimo/.cache/uv
mkdir -p /home/marimo/.cache/pip
mkdir -p /home/marimo/.local/share
mkdir -p /home/marimo/.local/lib

# Set permissions (works if we own the directories)
chmod -R 755 /home/marimo/.cache 2>/dev/null || true
chmod -R 755 /home/marimo/.local 2>/dev/null || true

# Execute the original command
exec "$@"

