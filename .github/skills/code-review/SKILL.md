---
name: code-review
description: Review code changes for bugs, quality, and project compliance. Works on PRs or local changes. Use when asked to review a PR, review changes, check code quality, or audit for bugs.
---

# Code Review

This skill provides comprehensive code review with specialized analysis for different aspects.

**For the full workflow with isolated context per aspect, switch to the `@code-review` agent.**

## What the Agent Provides

The `@code-review` agent supports:
- **PR Mode**: Review existing PRs, optionally post comments to GitHub
- **Local Mode**: Review uncommitted changes before committing

## Review Aspects (Sub-Agents)

| Agent | Aspect | When to Use |
|-------|--------|-------------|
| `@comment-analyzer` | Comments | When comments/docs were added |
| `@test-analyzer` | Tests | When test files changed |
| `@error-hunter` | Errors | When error handling changed |
| `@type-analyzer` | Types | When types were added/modified |
| `@code-simplifier` | Simplify | After passing review |

## Confidence Thresholds

- **Chat report**: Issues with confidence >= 50
- **GitHub PR comment**: Issues with confidence >= 80

## Quick Start

- Review a PR: `@code-review` then "Review PR #123"
- Review local changes: `@code-review` then "Review my changes"
- Targeted review: Use specific agent like `@error-hunter`
