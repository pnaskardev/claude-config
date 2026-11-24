#!/bin/bash
# Run on the Mac from the extracted bundle dir: ./install.sh
set -euo pipefail
cd "$(dirname "$0")"
command -v jq >/dev/null || { echo "Install jq first: brew install jq"; exit 1; }
command -v python3 >/dev/null || { echo "Install python3 first: xcode-select --install"; exit 1; }
for d in "$HOME/.claude"; do
  [ -e "$d" ] && cp -a "$d" "$d.bak.$(date +%s)" && echo "Backed up $d"
done
mkdir -p "$HOME/.claude"
cp -a home/.claude/. "$HOME/.claude/"
chmod +x "$HOME/.claude/statusline.sh" 
echo "Done. Run 'claude', log in, then /plugin to confirm plugins installed."
