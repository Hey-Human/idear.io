#!/usr/bin/env bash

# Get the commit hash of the latest commit
commit_hash=$1

# Get the GitHub API token
github_token=$2

# Get the download URL of the new file added
file_url=$(curl -s -H "Authorization: token ${github_token}" https://api.github.com/repos/${GITHUB_REPOSITORY}/commits/${commit_hash} | jq -r '.files[] | select(.filename | startswith("ideas/")) | .raw_url')

# Export the file URL as an output
echo "::set-output name=file_url::${file_url}"

# Get the content of the new file added
file_content=$(curl -sL "${file_url}" | base64)

# Export the file content as an output
echo "::set-output name=file_content::${file_content}"
