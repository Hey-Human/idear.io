#!/bin/bash

# Get the commit hash of the latest commit
commit_hash=$1

# Get the GitHub API token
github_token=$2

# Get the file name of the new file added
file_name=$(curl -s -H "Authorization: token ${github_token}" https://api.github.com/repos/${GITHUB_REPOSITORY}/commits/${commit_hash} | jq -r '.files[] | select(.filename | startswith("ideas")) | .filename')

# Generate the URL of the new idea
base_url="https://hey-human.github.io/idear.io/ideas"
idea_url="${base_url}/${file_name}"
idea_url="${idea_url%.*}.html"

# Export the idea URL as an output
echo "::set-output name=idea_url::${idea_url}"
