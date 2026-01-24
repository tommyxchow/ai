---
name: statusline-install
description: Install a pre-configured Claude Code statusline with model, tokens, cost, lines changed, and context usage. A batteries-included alternative to /statusline with formatting and color thresholds already defined.
argument-hint: 'Opus │ ↑15k ↓4k $1.23 │ 5m(2m) +10 -5 │ 42%'
model: haiku
context: fork
agent: statusline-setup
disable-model-invocation: true
---

# Statusline Specification

Create a statusline with this exact format:

```
Model │ ↑Tokens ↓Tokens $Cost │ Duration +Lines -Lines │ Context%
```

Example output:

```
Opus │ ↑15k ↓4k $1.23 │ 5m (2m) +156 -23 │ 42%
```

## Data Sources

| Field          | JSON Path                             |
| -------------- | ------------------------------------- |
| Model          | `.model.display_name`                 |
| Total duration | `.cost.total_duration_ms`             |
| API duration   | `.cost.total_api_duration_ms`         |
| Input tokens   | `.context_window.total_input_tokens`  |
| Output tokens  | `.context_window.total_output_tokens` |
| Cost           | `.cost.total_cost_usd`                |
| Lines added    | `.cost.total_lines_added`             |
| Lines removed  | `.cost.total_lines_removed`           |
| Context %      | `.context_window.used_percentage`     |

## Formatting Rules

**Duration**: Show as `Xs` or `Xm` — total time followed by API time in parentheses

- Example: `5m (2m)` = 5 min total, 2 min waiting for API

**Tokens**:

- Raw number if < 1,000 → `850`
- Lowercase `k` for thousands → `15k`
- Lowercase `m` with 1 decimal for millions → `1.2m`

**Cost**:

- 4 decimal places if < $0.10 → `$0.0123`
- 2 decimal places if ≥ $0.10 → `$1.23`

**Lines changed**:

- Green `\e[32m` for `+added`
- Red `\e[31m` for `-removed`

**Separators**: Dim `\e[90m` box-drawing character `│` (U+2502)

**General styling**: Duration, tokens, and cost should be dim `\e[90m`

## Context % Color Thresholds

Auto-compact triggers at ~78%, so thresholds are calibrated accordingly:

| Range  | Color  | ANSI           | Meaning                   |
| ------ | ------ | -------------- | ------------------------- |
| 0-49%  | Green  | `\e[32m`       | Plenty of room            |
| 50-64% | Yellow | `\e[33m`       | Getting used              |
| 65-74% | Orange | `\e[38;5;208m` | Approaching auto-compact  |
| 75%+   | Red    | `\e[31m`       | Near auto-compact trigger |

## Null Handling

Show `--` for any missing/null field. Default to `0` for lines added/removed and context percentage if null.

## Platform Notes

- **Windows**: Use PowerShell 7+ (`pwsh`) for ANSI color support. Use backtick syntax: `` `e[32m ``
- **macOS/Linux**: Use bash. Define ANSI codes with `$'...'` syntax: `GREEN=$'\033[32m'`

Install to `~/.claude/` and update `~/.claude/settings.json` with the statusLine configuration.
