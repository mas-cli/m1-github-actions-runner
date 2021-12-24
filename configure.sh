#!/usr/bin/env bash -e
#
# configure.sh
# m1-github-actions-runner
#
# Only needs to be called once
# https://github.com/actions/runner/blob/801a02ec891bb7aac65addc49eb6eeaeb942cf3e/src/Runner.Common/Constants.cs#L90


if test -z "${TOKEN}"; then
    echo "Required TOKEN environment variable is not set"
    exit 1
fi

cd actions-runner

# Organization level (haven't gotten this to work)
# url=https://github.com/mas-cli
# token=******

# Repository level
url="https://github.com/mas-cli/mas"
token="${TOKEN}"

./config.sh \
    --name "m1" \
    --runnergroup "Default" \
    --labels "self-hosted,macOS" \
    --work "_work" \
    --url "${url}" \
    --token "${token}"
