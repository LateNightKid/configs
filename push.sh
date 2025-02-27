#!/usr/bin/env bash
# Commit and pull changes
set -eu
cd "$(dirname "$0")"
git add .
git commit -m "$@"
git push
