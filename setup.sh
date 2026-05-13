#!/usr/bin/env bash
set -euo pipefail

RUBY_VERSION="3.3.6"

echo "==> Checking for Homebrew..."
if ! command -v brew &>/dev/null; then
  echo "ERROR: Homebrew is required. Install it from https://brew.sh and re-run this script."
  exit 1
fi

echo "==> Installing rbenv and ruby-build..."
brew install rbenv ruby-build

echo "==> Configuring rbenv in your shell..."
SHELL_RC="$HOME/.zshrc"
if ! grep -q 'rbenv init' "$SHELL_RC" 2>/dev/null; then
  echo 'eval "$(rbenv init - zsh)"' >> "$SHELL_RC"
  echo "    Added rbenv init to $SHELL_RC"
fi
eval "$(rbenv init - zsh)"

echo "==> Installing Ruby $RUBY_VERSION (this may take a few minutes)..."
rbenv install --skip-existing "$RUBY_VERSION"
rbenv local "$RUBY_VERSION"

echo "==> Installing Bundler..."
gem install bundler --no-document

echo "==> Installing gem dependencies..."
bundle install

echo ""
echo "Done! To preview the site, run:"
echo "    bundle exec jekyll serve --livereload"
echo "Then open http://localhost:4000"
