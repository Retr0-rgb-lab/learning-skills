#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TARGET="${1:-$HOME/.agents/skills}"
FORCE=0
if [[ "${2:-}" == "--force" ]] || [[ "${1:-}" == "--force" ]]; then
  FORCE=1
  [[ "${1:-}" == "--force" ]] && TARGET="${2:-$HOME/.agents/skills}"
fi
mkdir -p "$TARGET"

# Optional: drop legacy tutor* links that pointed at this repo
if [[ "$FORCE" -eq 1 ]]; then
  for old in "$TARGET"/tutor "$TARGET"/tutor-*; do
    [[ -L "$old" ]] || continue
    link="$(readlink "$old" || true)"
    if [[ "$link" == "$ROOT/skills/"* ]]; then
      rm -f "$old"
      echo "removed legacy link: $old"
    fi
  done
fi

for d in "$ROOT"/skills/*/; do
  [[ -d "$d" ]] || continue
  name="$(basename "$d")"
  dest="$TARGET/$name"
  if [[ -e "$dest" || -L "$dest" ]]; then
    if [[ "$FORCE" -eq 1 ]]; then
      rm -f "$dest"
    else
      echo "skip existing: $dest"
      continue
    fi
  fi
  ln -s "$d" "$dest"
  echo "linked $name -> $dest"
done
echo "done. target=$TARGET force=$FORCE"
