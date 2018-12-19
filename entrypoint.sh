#!/bin/sh
set -eu

cd "$GITHUB_WORKSPACE"

echo "Downloading dependencies"
pub get

if [ -z "$DTA_DONT_LINT" ]; then
  echo "Running linter"
  [[ "$(dartfmt -n . | wc -l)" -eq "0" ]]
fi

if [ -z "$DTA_DONT_ANALYZE" ]; then
  echo "Running Dartanalyzer"
  dartanalyzer --fatal-infos --fatal-warnings .
fi

if [ -z "$DTA_DONT_TEST" ]; then
  echo "Running tests"
  pub run test
fi
