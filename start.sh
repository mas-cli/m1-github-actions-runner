#!/usr/bin/env bash
#
# start.sh
# m1-github-actions-runner
#
# https://gregmfoster.medium.com/using-m1-mac-minis-to-power-our-github-actions-ios-ci-540c55af13ea

cd actions-runner

arch -x86_64 ./config.sh
arch -x86_64 ./run.sh

