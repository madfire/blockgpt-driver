#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
DIST_DIR="$ROOT_DIR/dist"
SOURCE_DIR="$ROOT_DIR/darwin"

rm -rf "$DIST_DIR"
mkdir -p "$DIST_DIR"

for ARCH in arm64 x64; do
  TMP_DIR="$(mktemp -d)"
  trap 'rm -rf "$TMP_DIR"' EXIT
  rsync -a --exclude '.DS_Store' "$SOURCE_DIR/" "$TMP_DIR/package/"
  cd "$TMP_DIR/package"
  zip -qr "$DIST_DIR/blockgpt-driver-darwin-${ARCH}.zip" .
  rm -rf "$TMP_DIR"
done

echo "Driver release archives created in $DIST_DIR"
