---
description: Generate tests for a file, component, or function
---

# Generate Tests

Generate comprehensive tests for the specified target.

**Target:** $ARGUMENTS

## Instructions

1. **Read the target file** - Understand what it does and its dependencies

2. **Identify testable behaviors:**
   - User interactions (clicks, inputs, form submissions)
   - Data transformations
   - API calls and responses
   - Error states and edge cases
   - Loading states

3. **Generate tests using:**
   - React Testing Library for components
   - Vitest/Jest patterns
   - Proper mocking for tRPC/TanStack Query
   - AG Grid testing patterns if applicable

4. **Include:**
   - Happy path tests
   - Error state tests
   - Edge cases (empty data, boundaries)
   - Loading state tests
   - User interaction tests

5. **Follow code style:**
   - Named exports
   - No semicolons
   - Single quotes
   - 2-space indent
   - Inline type imports

6. **Create test file** co-located with source (e.g., `Button.test.tsx`)

7. **Offer to run tests** with `pnpm test` or `vitest`

## Examples

```
/test src/components/Button.tsx
/test src/hooks/useAuth.ts
/test src/server/routers/user.ts
```
