#!/usr/bin/env bash

set -o errexit

repo_root=$(git rev-parse --show-toplevel)

flux install --manifests $repo_root/install-manifests/install

kubectl apply -f $repo_root/install-manifests/cluster-addons
