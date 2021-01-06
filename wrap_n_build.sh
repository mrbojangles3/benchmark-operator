#!/bin/bash
set -x
echo "you might need to do a quay login, check your notes"

operator-sdk-v0.19.4-x86_64-linux-gnu build quay.io/lblyth/benchmark-operator --image-builder podman

podman push quay.io/lblyth/benchmark-operator
