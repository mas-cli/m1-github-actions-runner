#!/usr/bin/env bash
#
# configure.sh
# m1-github-actions-runner
#
# Only needs to be called once
# https://github.com/actions/runner/blob/801a02ec891bb7aac65addc49eb6eeaeb942cf3e/src/Runner.Common/Constants.cs#L90

cd actions-runner || exit 1

# Organization level (haven't gotten this to work)
# url=https://github.com/mas-cli
# token=******

# Repository level
url=https://github.com/mas-cli/mas
token=******

./config.sh \
    --name "m1" \
    --labels "self-hosted,macOS,X64" \
    --work "_work" \
    --url "${url}" \
    --token "${token}"
