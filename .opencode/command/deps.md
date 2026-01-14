---
description: Check for outdated or vulnerable dependencies
---

# Dependency Check

Check for outdated and vulnerable packages in the project.

## Steps

1. **Check for outdated packages:**
   ```bash
   pnpm outdated
   ```

2. **Check for vulnerabilities:**
   ```bash
   pnpm audit
   ```

3. **Analyze findings:**
   - Group by severity (critical, high, moderate, low)
   - Identify breaking vs non-breaking updates
   - Note packages with known CVEs

4. **Provide recommendations:**

   **Update immediately:**
   - Security vulnerabilities (critical/high)
   - Packages with known exploits

   **Update soon:**
   - Moderate vulnerabilities
   - Major version bumps with important fixes

   **Update when convenient:**
   - Minor/patch updates
   - Low-priority improvements

   **Review before updating:**
   - Major version changes with breaking changes
   - Packages with complex migration paths

## Output Format

```
## Security Vulnerabilities
| Package | Severity | Issue | Fix |
|---------|----------|-------|-----|

## Outdated Packages
| Package | Current | Latest | Type |
|---------|---------|--------|------|

## Recommendations
1. **Immediate**: List of packages to update now
2. **Soon**: List of packages to update this week
3. **Review**: Packages needing migration planning
```

## Usage

```
/deps
```

No arguments needed - analyzes the current project.
