#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TARGET="${1:-$HOME/.agents/skills}"
mkdir -p "$TARGET"
for d in "$ROOT"/skills/*/; do
  name="$(basename "$d")"
  dest="$TARGET/$name"
  if [[ -e "$dest" || -L "$dest" ]]; then
    echo "skip existing: $dest"
    continue
  fi
  ln -s "$d" "$dest"
  echo "linked $name -> $dest"
done
echo "done. target=$TARGET"
