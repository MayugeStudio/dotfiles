#!/usr/bin/env bash
#
# install.sh - Create symlinks for this dotfiles repo into ~/.config
#
# Each top-level directory in this repo (e.g. nvim, alacritty) is symlinked
# to ~/.config/<name>. Existing files/directories are backed up before being
# replaced. Re-running is safe (idempotent).
#
# Usage:
#   ./install.sh           Create the symlinks
#   ./install.sh --dry-run Show what would happen without changing anything
#   ./install.sh --force   Replace existing targets without backing up

set -euo pipefail

# Resolve the directory this script lives in (the dotfiles repo root).
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}"
BACKUP_DIR="$CONFIG_DIR/.dotfiles-backup/$(date +%Y%m%d-%H%M%S)"

DRY_RUN=false
FORCE=false

for arg in "$@"; do
  case "$arg" in
    --dry-run) DRY_RUN=true ;;
    --force)   FORCE=true ;;
    -h|--help)
      grep '^#' "$0" | sed 's/^# \{0,1\}//'
      exit 0
      ;;
    *)
      echo "Unknown option: $arg" >&2
      exit 1
      ;;
  esac
done

# Directories in the repo that should NOT be linked into ~/.config.
IGNORE=(".git")

info()  { printf '\033[0;34m==>\033[0m %s\n' "$*"; }
ok()    { printf '\033[0;32m  ok\033[0m %s\n' "$*"; }
warn()  { printf '\033[0;33m  !!\033[0m %s\n' "$*"; }

run() {
  if $DRY_RUN; then
    echo "    [dry-run] $*"
  else
    "$@"
  fi
}

is_ignored() {
  local name="$1"
  for ig in "${IGNORE[@]}"; do
    [[ "$name" == "$ig" ]] && return 0
  done
  return 1
}

link_one() {
  local src="$1"          # absolute path inside the repo
  local name="$2"         # basename, e.g. nvim
  local dest="$CONFIG_DIR/$name"

  # Already pointing where we want? Nothing to do.
  if [[ -L "$dest" && "$(readlink "$dest")" == "$src" ]]; then
    ok "$name (already linked)"
    return
  fi

  # Something exists at the destination.
  if [[ -e "$dest" || -L "$dest" ]]; then
    if $FORCE; then
      warn "$name exists -> removing (--force)"
      run rm -rf "$dest"
    else
      warn "$name exists -> backing up to $BACKUP_DIR/"
      run mkdir -p "$BACKUP_DIR"
      run mv "$dest" "$BACKUP_DIR/$name"
    fi
  fi

  run ln -s "$src" "$dest"
  ok "$name -> $dest"
}

main() {
  info "Dotfiles: $DOTFILES_DIR"
  info "Target:   $CONFIG_DIR"
  $DRY_RUN && info "Mode:     dry-run (no changes will be made)"
  $FORCE   && info "Mode:     force (existing targets removed, not backed up)"

  run mkdir -p "$CONFIG_DIR"

  for entry in "$DOTFILES_DIR"/*/; do
    local name
    name="$(basename "$entry")"
    is_ignored "$name" && continue
    link_one "${entry%/}" "$name"
  done

  info "Done."
}

main
