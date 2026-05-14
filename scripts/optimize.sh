#!/usr/bin/env bash
# Optimize an image for the Inex's GPT Image 2 Prompts repo.
#
# Usage:
#   ./scripts/optimize.sh <input> <output>
#
# Example:
#   ./scripts/optimize.sh raw/my-output.png assets/images/portraits/cyberpunk-001.webp
#
# Requirements:
#   - ImageMagick 7+ (`magick` command)
#     Install: sudo apt install imagemagick  (Debian/Ubuntu)
#              brew install imagemagick      (macOS)

set -euo pipefail

if [ $# -ne 2 ]; then
  echo "Usage: $0 <input> <output>"
  echo ""
  echo "Example:"
  echo "  $0 raw/my-output.png assets/images/portraits/cyberpunk-001.webp"
  exit 1
fi

INPUT="$1"
OUTPUT="$2"

if [ ! -f "$INPUT" ]; then
  echo "Error: input file '$INPUT' not found"
  exit 1
fi

if ! command -v magick >/dev/null 2>&1; then
  echo "Error: 'magick' (ImageMagick 7+) not found. Install it first."
  exit 1
fi

# Ensure output directory exists
mkdir -p "$(dirname "$OUTPUT")"

# Resize to max 1024px on long side, convert to WebP at quality 85
magick "$INPUT" \
  -resize "1024x1024>" \
  -quality 85 \
  -strip \
  "$OUTPUT"

# Report
IN_SIZE=$(du -h "$INPUT" | cut -f1)
OUT_SIZE=$(du -h "$OUTPUT" | cut -f1)
echo "✅ Optimized: $INPUT ($IN_SIZE) → $OUTPUT ($OUT_SIZE)"
