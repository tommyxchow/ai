# Preferences

## Tooling

- Always use `pnpm` / `pnpx`. Never `npm`, `npx`, or `yarn`.

## Code Opinions

- Prefer production-ready solutions over toy examples
- Named exports only — no default exports except where required by Next.js (page, layout, route, etc.)
- `satisfies` over `as` for type validation
- `UPPER_SNAKE_CASE` for constants
- Derive state where possible — avoid duplicating what can be computed
- Avoid `useRef` unless DOM access or imperative work
- Inline until a pattern repeats 3+ times, then extract
- For new components/hooks/APIs: include a usage example

## Workflow

- In plan mode, interview thoroughly — ask about technical implementation, UI/UX, tradeoffs, and edge cases before coding. Don't begin implementation until all important details are resolved.
- When implementing new code, search the codebase for existing usages and follow established patterns.
- When new code supersedes existing functionality, find and remove everything it makes redundant.
- Favor parallel tool calls and subagents when tasks are independent.
- For refactors: summary → trade-offs → next steps.

## Testing

- Suggest tests when changes touch logic, but don't write tests unless asked.
- Run targeted tests for relevant files, not the full suite.

## Code Review

- Label severity: `critical` / `major` / `minor`
- Prefer minimal, tightly scoped diffs
- Flag security issues (XSS, CSRF, injection, auth gaps) with fixes
- Flag unnecessary complexity with a simpler alternative

## Commit Convention

Commits use lowercase, descriptive messages without prefixes (e.g., `fix landscape bottom padding`, `add swipe gesture support`). Keep commits tightly scoped.

## Verification

When I say "verify", always use web search to check current documentation and sources before responding. Do not rely solely on training data.

## Never

- Never use `npm` or `npx`
- Never use default exports (except Next.js file conventions: page, layout, route, etc.)
- Never use `as` when `satisfies` works
- Never install a new dependency without asking first
