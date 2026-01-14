---
description: Comprehensive PR review using specialized agents
---

# Comprehensive PR Review

Run a comprehensive pull request review using multiple specialized agents, each focusing on a different aspect of code quality.

**Review Aspects (optional):** "$ARGUMENTS"

## Review Workflow:

1. **Determine Review Scope**
   - Check git status to identify changed files
   - Parse arguments to see if user requested specific review aspects
   - Default: Run all applicable reviews

2. **Available Review Aspects:**

   - **comments** - Analyze code comment accuracy and maintainability
   - **tests** - Review test coverage quality and completeness
   - **errors** - Check error handling for silent failures
   - **types** - Analyze type design and invariants (if new types added)
   - **code** - General code review for project guidelines
   - **simplify** - Simplify code for clarity and maintainability
   - **security** - Security vulnerability detection (OWASP, XSS, CSRF)
   - **a11y** - Accessibility compliance (WCAG 2.2)
   - **perf** - Performance analysis (re-renders, bundle size)
   - **react** - React patterns and hooks best practices
   - **db** - Database/Drizzle patterns and query optimization
   - **nextjs-ssr** - Next.js App Router/SSR patterns
   - **nextjs-csr** - Next.js CSR/SPA patterns
   - **grid** - AG Grid patterns and performance
   - **all** - Run all applicable reviews (default)

3. **Identify Changed Files**
   - Run `git diff --name-only` to see modified files
   - Check if PR already exists: `gh pr view`
   - Identify file types and what reviews apply

4. **Determine Applicable Reviews**

   Based on changes:
   - **Always applicable**: code-reviewer, security-auditor, performance-analyzer
   - **If .tsx/.jsx changed**: react-patterns-reviewer
   - **If test files changed**: pr-test-analyzer
   - **If comments/docs added**: comment-analyzer
   - **If error handling changed**: silent-failure-hunter
   - **If types added/modified**: type-design-analyzer
   - **If schema/db/tRPC files changed**: database-reviewer
   - **If using App Router/SSR**: nextjs-ssr-reviewer
   - **If using CSR patterns**: nextjs-csr-reviewer
   - **If AG Grid components changed**: ag-grid-reviewer
   - **If UI components changed**: accessibility-reviewer
   - **After passing review**: code-simplifier (polish and refine)

5. **Launch Review Agents**

   **Sequential approach** (one at a time):
   - Easier to understand and act on
   - Each report is complete before next
   - Good for interactive review

   **Parallel approach** (user can request):
   - Launch all agents simultaneously
   - Faster for comprehensive review
   - Results come back together

6. **Aggregate Results**

   After agents complete, summarize:
   - **Critical Issues** (must fix before merge)
   - **Important Issues** (should fix)
   - **Suggestions** (nice to have)
   - **Positive Observations** (what's good)

7. **Provide Action Plan**

   Organize findings:
   ```markdown
   # PR Review Summary

   ## Critical Issues (X found)
   - [agent-name]: Issue description [file:line]

   ## Important Issues (X found)
   - [agent-name]: Issue description [file:line]

   ## Suggestions (X found)
   - [agent-name]: Suggestion [file:line]

   ## Strengths
   - What's well-done in this PR

   ## Recommended Action
   1. Fix critical issues first
   2. Address important issues
   3. Consider suggestions
   4. Re-run review after fixes
   ```

## Usage Examples:

**Full review (default):**
```
/review-pr
```

**Specific aspects:**
```
/review-pr tests errors
# Reviews only test coverage and error handling

/review-pr comments
# Reviews only code comments

/review-pr simplify
# Simplifies code after passing review
```

**Parallel review:**
```
/review-pr all parallel
# Launches all agents in parallel
```

## Agent Descriptions:

**code-reviewer**:
- Checks AGENTS.md compliance
- Detects bugs and issues
- Reviews general code quality

**security-auditor**:
- OWASP Top 10 vulnerabilities
- XSS, CSRF, injection detection
- tRPC endpoint security

**accessibility-reviewer**:
- WCAG 2.2 compliance
- Semantic HTML, ARIA
- Keyboard navigation, focus management

**performance-analyzer**:
- Re-render detection
- Bundle size analysis
- AG Grid virtualization
- Core Web Vitals impact

**react-patterns-reviewer**:
- useEffect misuse detection
- State management patterns
- tRPC/TanStack Query usage
- Hooks best practices

**database-reviewer**:
- Drizzle ORM patterns
- N+1 query detection
- Migration safety
- tRPC procedure optimization

**nextjs-ssr-reviewer**:
- Server/client boundaries
- RSC patterns
- Caching strategies
- Server actions security

**nextjs-csr-reviewer**:
- Bundle optimization
- Client routing patterns
- SPA performance
- Hydration efficiency

**ag-grid-reviewer**:
- SSRM implementation
- Column definition patterns
- Cell renderer performance
- Grid virtualization

**comment-analyzer**:
- Verifies comment accuracy vs code
- Identifies comment rot
- Checks documentation completeness

**pr-test-analyzer**:
- Reviews behavioral test coverage
- Identifies critical gaps
- Evaluates test quality

**silent-failure-hunter**:
- Finds silent failures
- Reviews catch blocks
- Checks error logging

**type-design-analyzer**:
- Analyzes type encapsulation
- Reviews invariant expression
- Rates type design quality

**code-simplifier**:
- Simplifies complex code
- Improves clarity and readability
- Applies project standards
- Preserves functionality

## Tips:

- **Run early**: Before creating PR, not after
- **Focus on changes**: Agents analyze git diff by default
- **Address critical first**: Fix high-priority issues before lower priority
- **Re-run after fixes**: Verify issues are resolved
- **Use specific reviews**: Target specific aspects when you know the concern

## Workflow Integration:

**Before committing:**
```
1. Write code
2. Run: /review-pr code errors
3. Fix any critical issues
4. Commit
```

**Before creating PR:**
```
1. Stage all changes
2. Run: /review-pr all
3. Address all critical and important issues
4. Run specific reviews again to verify
5. Create PR
```

**After PR feedback:**
```
1. Make requested changes
2. Run targeted reviews based on feedback
3. Verify issues are resolved
4. Push updates
```

## Notes:

- Agents run autonomously and return detailed reports
- Each agent focuses on its specialty for deep analysis
- Results are actionable with specific file:line references
- All agents available in agent list
