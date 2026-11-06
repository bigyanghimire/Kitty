#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
# Set KIVI_BUILD_ROOT to a large scratch filesystem when HOME is quota-limited.
BUILD_ROOT=${KIVI_BUILD_ROOT:-"$REPO_ROOT/build"}
mkdir -p "$BUILD_ROOT/tmp" "$BUILD_ROOT/cache"

export APPTAINER_TMPDIR="$BUILD_ROOT/tmp"
export APPTAINER_CACHEDIR="$BUILD_ROOT/cache"
export TMPDIR="$BUILD_ROOT/tmp"

apptainer build --disable-cache \
    "$BUILD_ROOT/kitty.sif" "$REPO_ROOT/kitty_cuda121.def"