#!/usr/bin/env bash
# Compact cwd for tmux status: ~, last 2 segments when deep, max width.
set -euo pipefail

p="${1-}"
[[ -n "$p" ]] || exit 0

p="${p/#$HOME/~}"

IFS=/ read -r -a parts <<< "$p"
n=${#parts[@]}

if (( n <= 3 )); then
  out="$p"
else
  out="${parts[n-2]}/${parts[n-1]}"
fi

max=36
if (( ${#out} > max )); then
  out="…${out:$(( ${#out} - max + 1 ))}"
fi

printf '%s' "$out"
