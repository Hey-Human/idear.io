#!/usr/bin/env bash

# Get the commit hash of the latest commit
commit_hash=$1

# Get the GitHub API token
github_token=$2

# Get the download URL of the new file added
file_url=$(curl -s -H "Authorization: token ${github_token}" https://api.github.com/repos/${GITHUB_REPOSITORY}/commits/${commit_hash} | jq -r '.files[] | select(.filename | startswith("ideas")) | .raw_url')
echo "File url: " ${file_url}
url=$(echo "$file_url" | sed 's|/raw||')
echo "after"
encoded_url="${url/github.com/raw.githubusercontent.com}"
# Decode the URL using the urldecode function
decoded_url=$(echo "$encoded_url" | sed 's/%/\\x/g' | xargs -0 printf "%b")
echo ${decoded_url}
# Export the file URL as an output
echo "::set-output name=file_url::${decoded_url}"

# Get the content of the new file added
file_content=$(curl -X GET -H "Authorization: token ${github_token}" ${decoded_url})

echo "File content: " ${file_content}

file_content=$(echo ${file_content} | tr '\n' ',')

# Export the file content as an output
echo "::set-output name=file_content::${file_content}"
