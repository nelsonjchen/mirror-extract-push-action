#!/bin/bash

set -e

# Download Archive
curl -L -o archive.zip "$1"
# Extract
unzip archive.zip -d archive
# Commit
git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"
timestamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
git add -A
git commit --all -m "Archive Updated on $timestamp"
git push https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git master
