#!/bin/bash

set -e

BRANCH="gh-pages"

TEMP_DIR="/tmp/2d2d-build"

wget https://github.com/zineland/zine/releases/download/$ZINE_VERSION/zine-x86_64-unknown-linux-gnu.tar.gz -O zine.tar.gz
tar xvf zine.tar.gz
RUST_BACKTRACE=1 ./zine build . ${TEMP_DIR}

echo "Starting deploying..."
git config --global url."https://".insteadOf git://
git config --global url."https://github.com/".insteadOf git@github.com:

git fetch --all
git checkout ${BRANCH}
cp -vr ${TEMP_DIR}/* .
git config user.name "GitHub Actions"
git config user.email "github-actions-bot@users.noreply.github.com"
git add .
git commit -m "Zine build"
git push "https://${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git" ${BRANCH}

echo "Deploy complete"

