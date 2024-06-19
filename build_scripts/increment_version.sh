#!/bin/bash

VERSION=$(jq -r .version package.json)
TAG="v${VERSION}"

if git rev-parse "$TAG" >/dev/null 2>&1; then
  echo "Tag $TAG already exists. Skipping version increment."
else
  npm version patch
fi