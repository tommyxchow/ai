---
name: commit-push-pr
description: Commit changes, push to remote, and open a pull request in one workflow.
---

# Commit, Push, and Open PR

This skill provides the complete workflow from local changes to pull request.

**For the full workflow, switch to the `@commit-push-pr` agent.**

## What the Agent Does

The `@commit-push-pr` agent:

1. Creates a new branch if on main/master
2. Stages and commits changes
3. Pushes to remote with tracking
4. Creates a pull request via `gh pr create`

## PR Format

```markdown
## Summary
<1-3 bullet points>

## Test plan
[Testing checklist...]

Generated with GitHub Copilot
```

## Quick Start

Type `@commit-push-pr` in chat to go from changes to PR.
