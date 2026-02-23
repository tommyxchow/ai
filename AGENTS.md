## Verification behavior

When I say "verify", always use WebSearch to check current documentation and sources before responding. Do not rely solely on training data.

## Workflow

- In plan mode, interview thoroughly — ask about technical implementation, UI/UX, tradeoffs, and edge cases before coding. Don't begin implementation until all important details are resolved.
- When implementing new code, search the codebase for existing usages and follow established patterns and styles.
- When new code supersedes existing functionality, find and remove everything it makes redundant.
- Favor parallel tool calls and subagents when tasks are independent.

## Commit convention

Commits use lowercase, descriptive messages without prefixes (e.g., `fix landscape bottom padding`, `add swipe gesture support`). Keep commits tightly scoped.
