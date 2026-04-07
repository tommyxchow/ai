# ai

Personal Claude Code global config. Source of truth for `~/.claude/`.

## Install

```bash
./install.sh
```

## New machine

```bash
gh repo clone tommyxchow/ai ~/Developer/ai && ~/Developer/ai/install.sh
```

## What's included

- `settings.json` — permissions, hooks (notifications, prettier+eslint), plugins, sandbox
- `CLAUDE.md` — author preferences (behavior, code opinions, quality, commit convention, etc.)
- `notify.sh` — cross-platform notification script (macOS + Windows)
- `skills/statusline-install` — Claude Code statusline setup skill
