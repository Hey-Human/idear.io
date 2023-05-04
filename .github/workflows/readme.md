# GitHub Workflows for Ideario Repository

This directory contains the GitHub workflows for the Ideario repository. The workflows automate various tasks such as notifying Slack on PR creation, building and deploying Jekyll sites, and managing GitHub Pages dependencies.

## Workflows

### 1. Notify Slack on PR Creation

- File: `notify_on_pr.yml`
- Name: Notify Slack on PR Creation
- Trigger: Pull Request

#### Jobs

- `validate_pr`: Validates the PR by checking if only one new file was added under the ideas directory.
- `notify_slack`: Sends a message to Slack with the new file content.

### 2. Get New File URL Script

- File: `get-new-file-url.sh`
- Bash script for getting the URL of the new file added.

### 3. Deploy Jekyll Site to Pages

- File: `jekyll.yml`
- Name: Deploy Jekyll site to Pages
- Triggers: Push to main branch, manual workflow dispatch

#### Jobs

- `build`: Builds the Jekyll site.
- `deploy`: Deploys the site to GitHub Pages.

### 4. Deploy Jekyll with GitHub Pages Dependencies Preinstalled

- File: `jekyll-gh-pages.yml`
- Name: Deploy Jekyll with GitHub Pages dependencies preinstalled
- Triggers: Push to main branch, manual workflow dispatch

#### Jobs

- `build-and-deploy`: Builds and deploys the Jekyll site with GitHub Pages dependencies preinstalled.
