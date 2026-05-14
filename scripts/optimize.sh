#!/usr/bin/env bash
# Scan the repo for .png images and convert them to optimized .webp.
# Skips files where the .webp already exists (idempotent — safe to re-run).
#
# Usage:
#   ./scripts/optimize.sh
#
# Flags:
#   --delete-source    Remove the original .png after a successful conversion
#   --force            Re-convert even if the .webp already exists
#   --dry-run          Show what would be done without actually doing it
#
# Requirements:
#   - ImageMagick 7+ (`magick` command)
#     Install: sudo apt install imagemagick  (Debian/Ubuntu)
#              brew install imagemagick      (macOS)

set -euo pipefail

# --- Parse flags ---
DELETE_SOURCE=0
FORCE=0
DRY_RUN=0

for arg in "$@"; do
  case "$arg" in
    --delete-source) DELETE_SOURCE=1 ;;
    --force)         FORCE=1 ;;
    --dry-run)       DRY_RUN=1 ;;
    -h|--help)
      sed -n '2,/^$/p' "$0" | sed 's/^# \{0,1\}//'
      exit 0
      ;;
    *)
      echo "Unknown flag: $arg"
      echo "Run with --help for usage."
      exit 1
      ;;
  esac
done

# --- Check magick is available ---
if ! command -v magick >/dev/null 2>&1; then
  echo "Error: 'magick' (ImageMagick 7+) not found. Install it first."
  exit 1
fi

# --- Locate repo root (assume script lives in <repo>/scripts/) ---
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$REPO_ROOT"

# --- Counters ---
CONVERTED=0
SKIPPED=0
FAILED=0

echo "🔍 Scanning $REPO_ROOT for .png files..."
echo ""

# --- Find every .png, excluding common junk folders ---
while IFS= read -r -d '' png; do
  webp="${png%.png}.webp"

  # Skip if .webp already exists (unless --force)
  if [ -f "$webp" ] && [ $FORCE -eq 0 ]; then
    echo "⏭️  Skip:    $png  (already converted)"
    SKIPPED=$((SKIPPED + 1))
    continue
  fi

  IN_SIZE=$(du -h "$png" | cut -f1)

  if [ $DRY_RUN -eq 1 ]; then
    echo "🔸 Would:   $png  →  $webp  (was $IN_SIZE)"
    CONVERTED=$((CONVERTED + 1))
    continue
  fi

  # Convert
  if magick "$png" -resize "1024x1024>" -quality 85 -strip "$webp" 2>/dev/null; then
    OUT_SIZE=$(du -h "$webp" | cut -f1)
    echo "✅ Convert: $png ($IN_SIZE)  →  $webp ($OUT_SIZE)"
    CONVERTED=$((CONVERTED + 1))

    if [ $DELETE_SOURCE -eq 1 ]; then
      rm "$png"
      echo "   🗑️  Removed source: $png"
    fi
  else
    echo "❌ Failed:  $png"
    FAILED=$((FAILED + 1))
  fi

done < <(find . \
  -type d \( -name .git -o -name node_modules -o -name raw \) -prune -o \
  -type f -iname "*.png" -print0)

# --- Summary ---
echo ""
echo "─────────────────────────────────────"
echo "  Converted: $CONVERTED"
echo "  Skipped:   $SKIPPED  (already had .webp)"
if [ $FAILED -gt 0 ]; then
  echo "  Failed:    $FAILED"
fi
echo "─────────────────────────────────────"

if [ $DRY_RUN -eq 1 ]; then
  echo "(Dry run — no files were actually modified.)"
fi
