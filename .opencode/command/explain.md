---
description: Explain code, trace data flow, understand patterns
---

# Explain Code

Explain the specified code, function, or data flow.

**Target:** $ARGUMENTS

## Instructions

1. **Read the target code** thoroughly

2. **Provide explanation:**
   - Start with one-sentence summary
   - Explain what it does in plain language
   - Match depth to complexity

3. **Trace data flow** (if applicable):
   - UI → Hook → tRPC → Database → Response
   - Identify all transformations
   - Note caching behavior

4. **Identify patterns:**
   - React patterns (composition, hooks, context)
   - tRPC/TanStack Query patterns
   - AG Grid patterns (SSRM, cell renderers)
   - TypeScript patterns (generics, discriminated unions)

5. **List related files:**
   - Dependencies
   - Related components
   - Shared types

6. **Note potential issues:**
   - Anti-patterns
   - Performance concerns
   - Missing error handling

## Output Format

```
## Summary
[One paragraph explanation]

## Data Flow
[Visual flow diagram if applicable]

## Key Concepts
- Concept: Explanation

## Related Files
- path/to/file.ts - Purpose

## Potential Issues (if any)
- Issue: Explanation
```

## Examples

```
/explain src/components/DataGrid.tsx
/explain src/hooks/useUserData.ts
/explain "how does the auth flow work"
/explain src/server/routers/orders.ts
```
