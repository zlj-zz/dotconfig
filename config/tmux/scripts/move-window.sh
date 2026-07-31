#!/usr/bin/env bash
# Move a window to a target index with shift semantics (not swap).
# Usage: move-window.sh TARGET_INDEX [CURRENT_INDEX]
# - target < current: insert before target (later windows shift right)
# - target > current: insert after target (in-between windows shift left)
# Then renumber so indices stay contiguous.
set -euo pipefail

target="${1-}"
[[ "$target" =~ ^[0-9]+$ ]] || exit 0

if [[ -n "${2-}" ]]; then
  cur="$2"
else
  cur="$(tmux display-message -p '#{window_index}')"
fi
[[ "$cur" =~ ^[0-9]+$ ]] || exit 0

if [[ "$target" == "$cur" ]]; then
  exit 0
fi

if (( target < cur )); then
  tmux move-window -s ":${cur}" -b -t ":${target}"
else
  tmux move-window -s ":${cur}" -a -t ":${target}"
fi

tmux move-window -r
