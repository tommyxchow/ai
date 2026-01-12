---
name: feature-dev
description: Guide systematic feature development with codebase exploration, architecture design, and implementation. Use this skill when the user wants to implement a new feature, add functionality, or build something new in the codebase.
---

# Feature Development

This skill provides guided feature development with codebase exploration, architecture design, and implementation.

**For the full workflow with isolated context per phase, switch to the `@feature-dev` agent.**

## What the Agent Provides

The `@feature-dev` agent guides you through a 7-phase workflow:

1. **Discovery** - Understand what needs to be built
2. **Codebase Exploration** - Analyze existing patterns (via `@code-explorer`)
3. **Clarifying Questions** - Resolve all ambiguities before designing
4. **Architecture Design** - Plan implementation approaches (via `@code-architect`)
5. **Implementation** - Build the feature with user approval
6. **Quality Review** - Ensure code quality (via `@fd-code-reviewer`)
7. **Summary** - Document what was accomplished

## Sub-Agents Available

| Agent | Purpose |
|-------|---------|
| `@code-explorer` | Deep codebase analysis and tracing |
| `@code-architect` | Architecture blueprints and design |
| `@fd-code-reviewer` | Quality review with confidence scoring |

## Quick Start

Type `@feature-dev` in chat to begin the guided workflow.
