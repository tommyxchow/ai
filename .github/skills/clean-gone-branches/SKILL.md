---
name: clean-gone-branches
description: Clean up git branches marked as [gone] that have been deleted on the remote but still exist locally.
---

# Clean Gone Branches

This skill cleans up stale local branches that have been deleted from the remote.

**For the full workflow, switch to the `@clean-gone-branches` agent.**

## What the Agent Does

The `@clean-gone-branches` agent:

1. Lists all branches and identifies those marked as [gone]
2. Identifies and removes associated worktrees
3. Deletes all branches marked as [gone]
4. Reports what was cleaned up

## Quick Start

Type `@clean-gone-branches` in chat to clean up stale branches.
