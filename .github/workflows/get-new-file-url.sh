#!/usr/bin/env bash

# Get the commit hash of the latest commit
commit_hash=$1

# Get the GitHub API token
github_token=$2

echo $(curl -s -H "Authorization: token ${github_token}" https://api.github.com/repos/${GITHUB_REPOSITORY}/commits/${commit_hash} | jq -r '.files[].filename')
echo $(curl -s -H "Authorization: token ${github_token}" https://api.github.com/repos/${GITHUB_REPOSITORY}/commits/${commit_hash} | jq -r '.files[] | select(.filename | startswith("ideas/") and (. | split("/") | length) == 2) | .raw_url')
echo $(curl -s -H "Authorization: token ${github_token}" https://api.github.com/repos/${GITHUB_REPOSITORY}/commits/${commit_hash})
# Get the download URL of the new file added
file_url=$(curl -s -H "Authorization: token ${github_token}" https://api.github.com/repos/${GITHUB_REPOSITORY}/commits/${commit_hash} | jq -r '.files[] | select(.filename | startswith("ideas/")) | .raw_url')
echo "File url: " ${file_url}

# Export the file URL as an output
echo "::set-output name=file_url::${file_url}"

# Get the content of the new file added
file_content=$(curl -sL "${file_url}" | sed -e 's/<[^>]*>//g' 2>/dev/null)

echo "File content: " ${file_content}

# Export the file content as an output
echo "::set-output name=file_content::${file_content}"
