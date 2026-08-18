#!/usr/bin/env bash
# Builds all downloadable zip packs for the THRIVE brand book.
#
# Run this any time you add/change assets under companies/ or 00-shared/ — it regenerates
# everything in downloads/ from scratch. The GitHub Actions workflow (.github/workflows/deploy.yml)
# also runs this automatically on every push, so the live site's download buttons are always
# in sync with whatever is committed — you never have to remember to re-zip by hand.
#
# Usage: ./build-downloads.sh

set -euo pipefail
cd "$(dirname "$0")"

rm -rf downloads
mkdir -p downloads

FONTS_DIR="00-shared/fonts"

echo "Building fonts-only pack..."
if [ -d "$FONTS_DIR" ] && [ -n "$(find "$FONTS_DIR" -type f ! -name '.DS_Store')" ]; then
  (cd 00-shared && zip -rq "../downloads/thrive-fonts.zip" fonts -x '*.DS_Store')
  echo "  -> downloads/thrive-fonts.zip"
else
  echo "  - no fonts on disk yet, skipping"
fi

echo "Building per-company packs (assets + fonts)..."
for dir in companies/*/; do
  slug="$(basename "$dir")"
  # skip companies with nothing in them yet — an empty zip helps no one
  if [ -z "$(find "$dir" -type f ! -name '.DS_Store' ! -name 'README.md')" ]; then
    echo "  - $slug: no assets yet, skipping"
    continue
  fi
  out="downloads/thrive-${slug}-assets.zip"
  staging="$(mktemp -d)"
  mkdir -p "$staging/$slug"
  cp -R "$dir." "$staging/$slug/"
  if [ -d "$FONTS_DIR" ]; then
    mkdir -p "$staging/$slug/fonts"
    cp -R "$FONTS_DIR/." "$staging/$slug/fonts/"
  fi
  (cd "$staging" && zip -rq "$OLDPWD/$out" "$slug" -x '*.DS_Store')
  rm -rf "$staging"
  echo "  - $slug -> $out (includes fonts)"
done

echo "Building full brand kit (everything)..."
zip -rq "downloads/thrive-brand-kit-complete.zip" \
  companies 00-shared ASSET-INVENTORY.md \
  -x '*.DS_Store'
echo "  -> downloads/thrive-brand-kit-complete.zip"

echo "Done. Contents of downloads/:"
ls -la downloads
