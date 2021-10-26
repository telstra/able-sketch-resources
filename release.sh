#!/bin/bash

file="libraries/able_version.txt"

read -d $'\x04' VERSION < "$file"

echo 'Current version is' $VERSION

# Stage all changes
git add --all

# Commit the cahnges
git commit -m "Version $VERSION"

# Push
git push -u origin main
