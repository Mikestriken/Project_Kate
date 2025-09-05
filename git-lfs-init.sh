#!/bin/bash
set -e  # exit immediately if a command fails

# Check if git-lfs is installed
if ! command -v git-lfs &> /dev/null; then
    echo "Error: git-lfs is not installed."
    echo "Please install Git LFS first:"
    echo "  https://git-lfs.com/"
    exit 1
fi

# Initialize LFS hooks
git lfs install

# Pull down all LFS objects for current branch
git lfs pull

# Enable lock verification
repo_url=$(git config --get remote.origin.url)
git config lfs."https://${repo_url}".locksverify true

echo "Git LFS locksverify enabled."