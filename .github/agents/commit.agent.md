---
name: commit
description: Create a git commit with an appropriate message based on staged and unstaged changes.
model: GPT-5 mini
tools:
  - execute
---

# Git Commit

Create a git commit based on the current changes.

## Getting Started

First, run these commands to understand the current state:

```bash
# See all files and their status
git status

# See staged and unstaged changes
git diff HEAD

# See current branch
git branch --show-current

# See recent commits for message style reference
git log --oneline -10
```

## Your Task

Based on the changes shown above, create a single git commit:

1. Stage relevant files with `git add`
2. Create the commit with an appropriate message

## Commit Message Guidelines

- Use lowercase, descriptive messages without prefixes
- Keep commits tightly scoped
- Focus on the "why" rather than the "what"
- Examples: "fix landscape bottom padding in chat bottom bar", "add swipe pip gesture support"

## Important Notes

- Do not commit files that likely contain secrets (.env, credentials.json, etc.)
- Use a HEREDOC for the commit message to ensure proper formatting:

```bash
git commit -m "$(cat <<'EOF'
your commit message here

Co-Authored-By: GitHub Copilot <noreply@github.com>
EOF
)"
```
