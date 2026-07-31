#!/usr/bin/env bash
# Install tmux config + Catppuccin theme plugin.
set -euo pipefail

TMUX_DIR="$(cd "$(dirname "$0")" && pwd)"
PLUGIN_DIR="${TMUX_DIR}/plugins/catppuccin/tmux"
CATPPUCCIN_REF="${CATPPUCCIN_REF:-v2.3.0}"

mkdir -p "$(dirname "$PLUGIN_DIR")"

if [[ ! -d "${PLUGIN_DIR}/.git" ]]; then
  echo "Cloning catppuccin/tmux@${CATPPUCCIN_REF} ..."
  git clone --depth 1 -b "${CATPPUCCIN_REF}" \
    https://github.com/catppuccin/tmux.git \
    "${PLUGIN_DIR}"
else
  echo "Catppuccin already present at ${PLUGIN_DIR}"
fi

# Link ~/.tmux.conf -> this repo's config (no sudo)
TARGET="${HOME}/.tmux.conf"
SOURCE="${TMUX_DIR}/.tmux.conf"
if [[ -L "${TARGET}" || ! -e "${TARGET}" ]]; then
  ln -sfn "${SOURCE}" "${TARGET}"
  echo "Linked ${TARGET} -> ${SOURCE}"
else
  echo "Skip link: ${TARGET} exists and is not a symlink"
fi

echo "Done. Reload with: tmux source-file ~/.tmux.conf"
