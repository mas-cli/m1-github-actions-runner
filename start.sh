#!/usr/bin/env bash
#
# start.sh
# m1-github-actions-runner
#
# https://gregmfoster.medium.com/using-m1-mac-minis-to-power-our-github-actions-ios-ci-540c55af13ea

cd actions-runner || exit 1

# Only needs to be called once
#arch -x86_64 ./config.sh --url https://github.com/mas-cli/mas --token ******

arch -x86_64 ./run.sh
