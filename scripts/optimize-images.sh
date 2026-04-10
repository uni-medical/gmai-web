#!/bin/bash
# ── Image Optimization Script ──────────────────────────────────────
# Resizes images to appropriate max dimensions for web display,
# compresses quality, and generates WebP versions alongside originals.
#
# Display sizes in the site:
#   team photos  → 96px (grid) / 180px (PI) / 160px (profile) → max 400px (2x retina)
#   teaser imgs  → 260px wide                                 → max 520px (2x retina)
#   project imgs → ~600px panels / detail pages                → max 1200px (2x retina)
#   hero-bg      → full viewport width                         → max 1920px
#   logo         → 32px (skip)
#
# Requirements: ImageMagick (convert)
# Usage: bash scripts/optimize-images.sh
# ────────────────────────────────────────────────────────────────────

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ASSETS="$REPO_ROOT/assets/images"

echo "=== Image Optimization ==="
echo "    Assets dir: $ASSETS"
echo ""

optimized=0
webp_created=0

optimize() {
  local file="$1"
  local max_dim="$2"       # e.g. "400x400" or "1200x"
  local quality="${3:-85}"

  [ -f "$file" ] || return 0

  local ext="${file##*.}"
  local base="${file%.*}"
  local before
  before=$(stat -c%s "$file" 2>/dev/null || stat -f%z "$file" 2>/dev/null)

  # Resize + compress original (only shrinks, never enlarges due to > flag)
  convert "$file" -resize "${max_dim}>" -quality "$quality" -strip "$file"

  local after
  after=$(stat -c%s "$file" 2>/dev/null || stat -f%z "$file" 2>/dev/null)

  local saved=$(( before - after ))
  local pct=0
  [ "$before" -gt 0 ] && pct=$(( saved * 100 / before ))

  printf "  %-50s %6sK → %6sK  (-%d%%)\n" \
    "$(basename "$file")" \
    "$(( before / 1024 ))" \
    "$(( after / 1024 ))" \
    "$pct"
  optimized=$((optimized + 1))

  # Generate WebP alongside original
  convert "$file" -quality 80 "${base}.webp"
  webp_created=$((webp_created + 1))
}

# ── Team photos (96–180px display → max 400px) ─────────────────────
echo "--- Team Photos (max 400×400) ---"
for img in "$ASSETS/team/"*.{jpg,jpeg,png,JPG,JPEG,PNG}; do
  optimize "$img" "400x400" 85
done
echo ""

# ── Teaser images (260px display → max 520px) ──────────────────────
echo "--- Teaser Images (max 520px wide) ---"
for img in "$ASSETS/teasers/"*.{jpg,jpeg,png,JPG,JPEG,PNG}; do
  optimize "$img" "520x" 85
done
echo ""

# ── Project images (panels + detail pages → max 1200px) ────────────
echo "--- Project Images (max 1200px wide) ---"
shopt -s globstar nullglob
for img in "$ASSETS/projects/"**/*.{jpg,jpeg,png,JPG,JPEG,PNG}; do
  optimize "$img" "1200x" 85
done
shopt -u globstar
echo ""

# ── Hero background (full-width → max 1920px) ─────────────────────
echo "--- Hero Background (max 1920px wide) ---"
if [ -f "$ASSETS/hero-bg.png" ]; then
  optimize "$ASSETS/hero-bg.png" "1920x" 85
fi
echo ""

# ── Logo (skip — already tiny) ─────────────────────────────────────
echo "--- Logo (skipped) ---"
echo ""

# ── Summary ────────────────────────────────────────────────────────
echo "=== Summary ==="
echo "  Images optimized: $optimized"
echo "  WebP created:     $webp_created"
total_before=$(du -sh "$ASSETS" | cut -f1)
echo "  Total assets dir: $total_before"
echo "=== Done ==="
