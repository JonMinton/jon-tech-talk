#!/bin/bash
# Pre-render hook to ensure images are accessible for Quarto rendering
# This defensive script ensures the presentation can render regardless of branch state

REPO_ROOT="$(git rev-parse --show-toplevel)"
SLIDES_DIR="$REPO_ROOT/slides"
IMAGES_SRC="$REPO_ROOT/images"
IMAGES_DEST="$SLIDES_DIR/images"

echo "🔍 Checking image paths for Quarto rendering..."

# Check if images folder exists at repo root
if [ ! -d "$IMAGES_SRC" ]; then
    echo "❌ ERROR: $IMAGES_SRC not found!"
    exit 1
fi

# Check if slides/images exists, create symlink if not
if [ ! -d "$IMAGES_DEST" ]; then
    echo "📁 Creating symlink: slides/images -> ../images"
    ln -s "../images" "$IMAGES_DEST"
    echo "✅ Symlink created"
elif [ ! -L "$IMAGES_DEST" ]; then
    # If it's a directory (not symlink), check if it's up to date
    echo "⚠️  WARNING: slides/images exists as directory, not symlink"
    echo "   Consider removing and re-running this script to use symlink instead"
else
    echo "✅ Symlink already exists and is valid"
fi

echo "🎯 Ready for Quarto rendering"
