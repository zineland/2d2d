#!/bin/bash

set -e

BRANCH="gh-pages"

if ! command -v zine &> /dev/null
then
    echo "zine could not be found, start installing..."

    RUSTUP_TOOLCHAIN=stable cargo install zine
fi

TEMP_DIR="/tmp/2d2d-build"

zine build ${TEMP_DIR}

deploy

deploy() {
  echo "Starting deploying..."
  git config --global url."https://".insteadOf git://
  git config --global url."https://github.com/".insteadOf git@github.com:

  git checkout ${BRANCH}
  cp -vr ${TEMP_DIR} .
  git config user.name "GitHub Actions"
  git config user.email "github-actions-bot@users.noreply.github.com"
  git add .
  git commit -m "Zine build"
  git push "https://${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git" ${BRANCH}

  echo "Deploy complete"
}

