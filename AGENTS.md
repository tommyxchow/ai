# AGENTS.md

## Tooling

- Always use **pnpm** and **pnpx** — never npm, npx, or yarn
- Vitest for unit tests, Playwright for e2e

## Code Style

### Formatting

- 2-space indent, single quotes (including JSX), no semicolons
- Named exports only — no default exports
- Organize imports automatically (prettier-plugin-organize-imports)
- Sort Tailwind classes automatically (prettier-plugin-tailwindcss)

### Naming

- **PascalCase**: Components, types, interfaces, and component files (`MyComponent.tsx`)
- **camelCase**: Functions, variables, hooks
- **kebab-case**: Non-component files (`use-auth.ts`, `api-client.ts`, `schema.ts`)
- **UPPER_SNAKE_CASE**: Constants

### TypeScript

- Strict mode
- `satisfies` over `as` for type narrowing
- `??` over `||` for nullish coalescing
- Explicit null checks over loose truthiness
- No enums — use `as const` objects or union types
- Inline type imports: `import { type Foo }`
- Exhaustive switch statements
- Avoid `any` — explain why if unavoidable

### React

- Functional components only, composition over configuration
- Derive state declaratively — avoid unnecessary `useState`
- Avoid `useEffect` unless real side effects or external sync
- Avoid `useRef` unless DOM access or imperative work
- State progression: `useState` → Context → Zustand
- Custom hooks: `use` prefix, exhaustive deps

### General

- Inline until a pattern repeats 3+ times — then abstract
- Co-locate related code
- New components/hooks/APIs: include a usage example

## Testing

- Suggest when tests would be valuable, but don't write them unless asked

## Code Review

- Severity labels: **critical** / **major** / **minor**
- Minimal diffs
- Flag security issues proactively with fixes
- Note a11y and performance concerns when relevant

## Behavior

- When approach matters and request lacks detail, ask 1-2 clarifying questions. For straightforward tasks, just execute.
- Refactors: summary → trade-offs → next steps
- Lead with answer, then brief explanation
- Match depth to complexity
- When I say "verify", search current docs/sources — don't rely on training data

## Never

- Never use npm/npx/yarn
- Never use default exports
- Never use enums
- Never use `as` when `satisfies` works
- Never use `console.log` (only `console.warn`/`console.error`)
- Never use `useEffect` for derived state
- Never use `any` without justification
- Never use `||` when `??` is correct
- Never install a dependency without confirming first
