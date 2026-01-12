---
name: commit-push-pr
description: Commit changes, push to remote, and open a pull request in one workflow.
model: GPT-5 mini
tools:
  - execute
---

# Commit, Push, and Open PR

Complete workflow from local changes to pull request.

## Getting Started

First, run these commands to understand the current state:

```bash
# See all files and their status
git status

# See staged and unstaged changes
git diff HEAD

# See current branch
git branch --show-current
```

## Your Task

Based on the changes shown above:

1. **Create a new branch** if currently on main/master
2. **Stage and commit** with an appropriate message
3. **Push** the branch to origin with `-u` flag
4. **Create a pull request** using `gh pr create`

## Execution

You can run multiple commands in sequence:

```bash
# If on main, create a new branch
git checkout -b feature/your-branch-name

# Stage all changes
git add .

# Commit with message
git commit -m "$(cat <<'EOF'
your commit message here

Co-Authored-By: GitHub Copilot <noreply@github.com>
EOF
)"

# Push to remote
git push -u origin HEAD

# Create PR
gh pr create --title "PR title" --body "$(cat <<'EOF'
## Summary
- Brief description of changes

## Test plan
- How to test

Generated with GitHub Copilot
EOF
)"
```

## PR Format

Use this structure for the PR body:

```markdown
## Summary
<1-3 bullet points describing the changes>

## Test plan
[Bulleted markdown checklist of TODOs for testing the pull request...]

Generated with GitHub Copilot
```

## Important Notes

- Return the PR URL when done so the user can see it
- Do not commit files that likely contain secrets
- Use descriptive, lowercase commit messages
