#!/usr/bin/env sh
set -eu

ROOT="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

"$ROOT/install-symlinks.sh"
"$ROOT/install-utils.sh"
"$ROOT/install-apps.sh"
