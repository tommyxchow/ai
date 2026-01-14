---
description: Quick security audit of recent changes
---

# Security Scan

Perform a quick security audit of recent code changes using the security-auditor agent.

## Context

- Recent changes: !`git diff --name-only HEAD~5`
- Current git diff: !`git diff HEAD`

## Task

Use the **security-auditor** agent to review the recent changes for security vulnerabilities:

1. Focus on files changed in the last few commits
2. Prioritize:
   - Authentication and authorization code
   - User input handling
   - API endpoints and tRPC procedures
   - Data validation
   - Secrets or sensitive data exposure

3. Provide a concise report with:
   - Critical vulnerabilities (if any)
   - High-risk issues
   - Quick fixes for each issue

Arguments (optional): $ARGUMENTS

If arguments specify files or directories, focus the scan on those locations.
