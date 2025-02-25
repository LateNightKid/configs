# Commit and pull changes
set -eu
git add .
git commit -m "$@"
git push
