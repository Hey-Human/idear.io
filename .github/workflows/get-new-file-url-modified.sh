#!/bin/bash

set -e

changed_files="$(git diff-tree --no-commit-id --name-only -r $GITHUB_SHA)"

check_run() {
  echo "$changed_files" | grep --quiet "$1" && echo "true" || echo "false"
}

run_check="$(check_run "ideas/")"

if [ "$run_check" == "true" ]; then
  new_file="$(echo "$changed_files" | grep "ideas/" | head -n 1)"
  file_name="$(basename "$new_file" .html)"
  echo "https://hey-human.github.io/idear.io/ideas/$file_name.html"
else
  echo ""
fi
