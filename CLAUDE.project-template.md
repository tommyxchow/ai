# CLAUDE.md

## Project

<!-- What is this app? 1-2 sentences. -->
<!-- Who uses it? (e.g., "500+ internal users", "public SaaS") -->
<!-- Key context Claude can't infer from code alone. -->

## Stack

<!-- Only list non-obvious choices — Claude infers most of your stack from the codebase. -->
<!-- Examples: -->
<!-- - AG Grid for complex data tables, TanStack Table for simple ones -->
<!-- - Drizzle ORM + Postgres -->
<!-- - Auth: Clerk / NextAuth / etc. -->
<!-- - Deployed on: Vercel / AWS / etc. -->

## Architecture

<!-- Monorepo layout / workspace structure -->
<!-- Folder conventions (feature-based, layer-based, etc.) -->
<!-- API patterns: tRPC router organization, naming conventions -->
<!-- Shared packages and how they're consumed -->

## Commands

```
pnpm dev        # local dev server
pnpm build      # production build
pnpm test       # unit tests
pnpm test:e2e   # e2e tests
pnpm lint       # lint + typecheck
pnpm db:push    # push schema changes
pnpm db:studio  # open database GUI
```

## Project Rules

<!-- Patterns or overrides unique to this project -->
<!-- e.g., "All API routes must validate auth via middleware" -->
<!-- e.g., "Feature flags use LaunchDarkly — check flags before shipping" -->
