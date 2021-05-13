#!/usr/bin/env bash
# download.sh
# m1-github-actions-runner
#
# https://github.com/actions/runner/releases/tag/v2.278.0

version=2.278.0
os=osx
arch=x64

echo "Downloading GitHub actions-runner for ${os} ${arch}"

# Create a folder
mkdir actions-runner && cd actions-runner || exit

# Download the latest runner package
curl -O -L https://github.com/actions/runner/releases/download/v${version}/actions-runner-${os}-${arch}-${version}.tar.gz

# Extract the installer
tar xzf ./actions-runner-${os}-${arch}-${version}.tar.gz
