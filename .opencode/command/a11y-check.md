---
description: Quick accessibility review of components
---

# Accessibility Check

Perform a quick accessibility audit using the accessibility-reviewer agent.

## Context

- Recent changes: !`git diff --name-only HEAD~5`
- Current git diff: !`git diff HEAD`

## Task

Use the **accessibility-reviewer** agent to review components for accessibility:

1. Focus on UI components in recent changes
2. Check for:
   - Semantic HTML usage
   - Keyboard accessibility
   - ARIA attributes
   - Color contrast concerns
   - Focus management
   - AG Grid accessibility (if applicable)

3. Provide a concise report with:
   - Critical a11y issues (blocks users)
   - Important issues (degrades experience)
   - Quick fixes for each issue

Arguments (optional): $ARGUMENTS

If arguments specify components or directories, focus the audit on those locations.
