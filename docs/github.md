# Github Step-by-Step:

## The Standard

```bash
# Stage all changes
git add .
# Check what's staged
git status
```

## Commit normally

```bash
git commit -m "your descriptive commit message"
```

### If pre-commit fails:

```bash
git commit --no-verify -m "your descriptive commit message"
```

### Push the changes

```bash
git push
```

## Merge Branch

1. Make sure you're up to date:

```bash
git fetch origin
```

2. Rebase to main (cleaner history):

```bash
git rebase origin/main
```

3. Merge to main:

```bash
git checkout main
git merge <your-branch/is-awesome-branch> --no-ff
```

4. Push your updated main:

```bash
git push origin main
```

5. Delete merged branch (optional)

a. delete locally

```bash
git branch -d feature/bot-polling-config
```

b. delete remotely

```bash
git push origin --delete feature/bot-polling-config
```

## Common Commands

See recent commits

```bash
git log --oneline --decorate --graph --abbrev-commit -n10
```

Show file changes before staging

````bash
git diff
bash

See staged changes
```bash
git diff --cached
````

Unstage a file

```bash
git restore --staged <filename>
```

Show all branches (including remotes `--all`)

```bash
git branch --all
```

Create and switch to a new branch

```bash
git checkout -b feature/your-branch-name
```

Switch to an existing branch

```bash
git checkout your-branch-name
```

Pull latest changes (keeping local work safe)

```bash
git pull --rebase
```

Merge another branch into yours

```bash
git merge other-branch-name
```

Push a new branch

```bash
git push -u origin feature/your-branch-name
```

Hard reset to last commit (⚡ dangerous!)

```bash
git reset --hard
```

## Handling Pre-Commit Hooks

Run all pre-commit checks manually

```bash
pre-commit run --all-files
```

Bypass pre-commit temporarily
⚠️ Important: Only bypass pre-commit temporarily for work-in-progress (WIP) commits.
Before merging to main, fix any outstanding pre-commit problems.

```bash
git commit --no-verify -m "your message"
```

### Example Full Session

```bash
# Create a new branch
git checkout -b feature/fix-bot-html-escaping

# Work on code...
# Stage and commit
git add .
git commit -m "fix: correct HTML escaping for bot info display"

# Push new branch
git push -u origin feature/fix-bot-html-escaping
```

Later, open a pull request (PR) to merge into main

## Commit Message Guidelines

Use short prefixes:

- `feat`: New feature
- `fix`: Bugfix
- `chore`: Maintenance tasks
- `docs`: Documentation changes
- `refactor`: Code change (no feature/fix)
- `test`: Adding or fixing tests
- `WIP`: Work in Progress (temporary)

### Example:

```bash
git commit -m "feat: add temperature adjustment command"
git commit -m "fix: correct escaping in bot handler"
```

## Autoformatting

### Black

Problem: `❌ "file.py is not formatted correctly"`

Fix:

```bash
# Auto-format the code
black .
```

✅ Tip: Black never requires manual fixing — just run it!

### Ruff — Linting Issues

Problem: `❌ "line too long", "unused import", "missing whitespace"` etc.

Fix:

```bash
# Auto-fix safe issues (about 80%!)
ruff check . --fix
```

If anything remains:

```bash
# Open the file manually and fix
vim path/to/file.py
# or
code path/to/file.py  # (VS Code)
```

✅ Tip: Ruff errors usually have a code like E501 (line too long) — you can Google these if unsure.

### mypy — Type Checking

Problem: ❌ "error: Incompatible types", "error: Argument 1 has incompatible type..." etc.

Fix:

- Read the error: it will tell you which types are wrong.
- Use explicit typing, e.g.:

```python
from typing import Optional

def hello(name: Optional[str]) -> str:
    if name is None:
        return "Hello!"
    return f"Hello {name}"
```

If you know it's safe, you can silence mypy with:

```python
some_value = get_value()  # type: ignore
```

✅ Tip: Try to fix properly. Only use # type: ignore if really necessary.

### Full Fix Workflow (recommended)

```bash
# 1. Auto-fix formatting and style
black .
ruff check . --fix

# 2. Check manually after fixes
mypy src/

# 3. Commit your changes
git add .

# 4 commit
git commit -m "fix: clean up style and types after pre-commit check"
```

### Special Moves (when you're stuck)

- Pre-commit hooks block you, but you are mid-debugging?

```
git commit --no-verify -m "WIP: continue debugging XYZ"`
```

- Want to temporarily ignore a Ruff rule? Add

```
# noqa: RULE_CODE at the end of the line
```

- Need to temporarily ignore a mypy error? Add

```
# type: ignore
```
