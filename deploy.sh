#!/bin/bash
set -eou pipefail

echo 111

pulumi ${1:-preview} --stack pulumi/codeship-example-${CI_BRANCH} --non-interactive "${@:2}"
