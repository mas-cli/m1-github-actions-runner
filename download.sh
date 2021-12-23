#!/usr/bin/env bash
# download.sh
# m1-github-actions-runner
#
# https://github.com/actions/runner/releases

version=2.286.0
os=osx
arch=x64

echo "Downloading GitHub actions-runner for ${os} ${arch}"

# Create a folder
if ! test -d actions-runner; then
    mkdir actions-runner || exit 1
fi

cd actions-runner || exit 2

# Download the latest runner package
curl -O -L https://github.com/actions/runner/releases/download/v${version}/actions-runner-${os}-${arch}-${version}.tar.gz

# Extract the installer
tar xzf ./actions-runner-${os}-${arch}-${version}.tar.gz
