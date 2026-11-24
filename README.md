# claude-config

My Claude Code user config (`~/.claude`) for macOS.

## Setup on a new Mac

Run these in Terminal, in order:

```bash
# 1. Install Homebrew (skip if `brew --version` already works)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Install jq (the hooks in settings.json need it)
brew install jq

# 3. Install Claude Code (skip if `claude --version` already works)
curl -fsSL https://claude.ai/install.sh | bash

# 4. Get this config and install it
git clone https://github.com/pnaskardev/claude-config.git
./claude-config/install.sh

# 5. Start Claude Code and log in
claude
```

Then inside Claude Code:

- `/plugin` to check that the plugins in `settings.json` installed
- `/status` to check that the settings loaded

## What install.sh does

1. Checks that `jq` and `python3` are installed (if `python3` is missing, run `xcode-select --install`)
2. Backs up an existing `~/.claude` to `~/.claude.bak.<timestamp>`
3. Copies `home/.claude/` into `~/.claude/`

## What's included

| File | Purpose |
|---|---|
| `CLAUDE.md` | Global instructions for every project |
| `settings.json` | Permission deny list, hooks, model, theme, plugins |
| `statusline.sh` | Status line script |
| `themes/omarchy.json` | Color theme |

Not included: credentials, rules, skills, session history.

## Updating later

```bash
cd claude-config && git pull && ./install.sh
```
