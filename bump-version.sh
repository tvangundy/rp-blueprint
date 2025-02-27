#!/bin/bash

# Read the current version from the VERSION file
current_version=$1

# Split the version into an array
IFS='.' read -r -a version_parts <<< "$current_version"

echo "Current version: $current_version"
# Increment the patch version
version_parts[2]=$((version_parts[2] + 1))

# Join the version parts back into a string
new_version="${version_parts[0]}.${version_parts[1]}.${version_parts[2]}"

echo "New version: $new_version"

# Write the new version back to the VERSION file
echo "$new_version" > VERSION

# Output the new version
echo "Bumped version: $new_version"
