#!/bin/bash
# Subify Automated macOS One-Line Installer Script
set -e

echo "🎵 Installing Subify for macOS..."
curl -fsSL https://subify-website.vercel.app/Subify.zip -o /tmp/Subify.zip
pkill -9 -f "run.py" 2>/dev/null || true
pkill -9 -f "Subify" 2>/dev/null || true
rm -rf /Applications/Subify.app
unzip -q -o /tmp/Subify.zip -d /Applications/
xattr -cr /Applications/Subify.app 2>/dev/null || true
rm -f /tmp/Subify.zip
echo "✅ Subify installed successfully to /Applications/Subify.app!"
echo "🚀 Launching Subify..."
open /Applications/Subify.app
