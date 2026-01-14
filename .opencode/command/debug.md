---
description: Investigate a bug from report, error, or description
---

# Debug Issue

Investigate and trace a bug to its root cause.

**Bug Report:** $ARGUMENTS

## Instructions

1. **Parse the bug report:**
   - Expected vs actual behavior
   - Error messages or stack traces
   - Steps to reproduce
   - Environment/conditions

2. **Locate relevant code:**
   - Search for error messages in codebase
   - Find the code path mentioned in stack trace
   - Identify entry points for the feature

3. **Trace the issue:**
   - Follow data flow from trigger to symptom
   - Check for common bug patterns:
     - Stale closures in React hooks
     - Missing null checks
     - Race conditions
     - Type mismatches
     - Cache staleness

4. **Identify root cause:**
   - Pinpoint exact file:line where bug occurs
   - Explain why this causes the observed behavior

5. **Propose fix:**
   - Minimal code change to fix the issue
   - Consider edge cases
   - Note what tests to add

## Output Format

```
## Bug Summary
[One sentence description]

## Root Cause
Location: file:line
Issue: [What's wrong]
Why: [Why this causes the bug]

## Proposed Fix
[Code snippet or description]

## Verification
[How to verify the fix works]
```

## Examples

```
/debug "Users see blank screen after login"
/debug "TypeError: Cannot read property 'id' of undefined at UserProfile.tsx:45"
/debug "Orders not saving - form submits but nothing happens"
/debug "AG Grid showing wrong row count in pagination"
/debug @ticket.md  # Read bug details from file
```
