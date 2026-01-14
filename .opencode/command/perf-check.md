---
description: Quick performance analysis of recent changes
---

# Performance Check

Perform a quick performance audit using the performance-analyzer agent.

## Context

- Recent changes: !`git diff --name-only HEAD~5`
- Current git diff: !`git diff HEAD`

## Task

Use the **performance-analyzer** agent to review code for performance issues:

1. Focus on files changed recently
2. Check for:
   - Unnecessary re-renders
   - Bundle size concerns (large imports)
   - Missing memoization
   - AG Grid performance patterns
   - TanStack Query optimization
   - Data fetching efficiency

3. Provide a concise report with:
   - Critical performance issues
   - Optimization opportunities
   - Quick wins with expected impact

Arguments (optional): $ARGUMENTS

If arguments specify files or directories, focus the analysis on those locations.
