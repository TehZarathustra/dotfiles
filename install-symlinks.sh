#!/usr/bin/env sh
set -eu

ROOT="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# Export so sourced libraries can resolve paths reliably
export ROOT

. "$ROOT/scripts/symlinks_install.sh"

symlinks_install
