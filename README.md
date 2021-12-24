# M1 GitHub Actions Runner

This repo is a collection of scripts to manage the
[GitHub Actions Runner](https://github.com/actions/runner) for mas builds.

## `download.sh`

Downloads, validates and extracts the runner app into an `actions-runner/` subdirectory.

## `configure.sh`

Configures the runner to connect with GitHub. The required secret `TOKEN` must be
retrieved from GitHub. This must be provided via a `TOKEN` environment variable.
The `.envrc.example` shows example usage of setting this variable for the local
project using [direnv](https://direnv.net).

## `start.sh`

Script to start the runner app.
