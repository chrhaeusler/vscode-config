# Github Copilot

## TODO

- browse through settings

## Quick-Links

- [Docs Cheat Sheet](https://code.visualstudio.com/docs/copilot/reference/copilot-vscode-features)
- [Settings @ GitHub](https://github.com/settings/copilot/)
- [Web GUI](https://github.com/copilot)
- Extensions: cf. [GitHub Marketplace](https://github.com/marketplace)

## GUI

- ✨: Rewrite: click -> _modify_ or _review_
- 💡: Quick Fix

- `Right Click` -> _Copilot_:
  - Explain
  - Fix
  - Review and Comment
  - Generate Docs
  - Generate Tests

## Hotkeys

- **Trigger Suggestion**: `Alt + \`
- **See Next Suggestion**: `Alt + ]`
- **See Previous Suggestion**: `Alt + [`
- **Accept Entire Suggestion**: `Tab`
- **Accept Next Word**: `Ctrl + →`
- **See Suggestion in Panel**: `Ctrl + Enter`

- **Start Inline Chat in Editor or Terminal**: `Ctrl + I`
- **Open Chat**: `Ctrl + Alt + I`

## Chat

- **`/help` for help**
- 📎 or `#` to add context: e.g.file('s function), symbol, codebase...
- `@`: ask participant (e.g. `@workspace`, `@vscode`, `@terminal`)

- `/`:
  - `/explain`
  - `/fix`
  - `/doc`
  - `/new`
  - `/tests`

## CLI

`gh` is GitHub on the command line. It brings pull requests, issues, and other GitHub concepts to the terminal next to where you are already working with git and your code.

- `gh` to check if installed
- [Docs](https://github.com/cli/cli)
- `gh copilot` to check if installed
- `gh auth login`
- `gh extension install github/gh-copilot`

Usage:

- `gh copilot`: `explain "[str]"`, `suggest "[str]"`

Example:

- `gh copilot suggest "create a new readme.md and structure it with headings and add the MIT licence`

## Instruction file

- `.github/copilot-instructions.md` per project folder
- [Docs](https://code.visualstudio.com/docs/copilot/copilot-customization)
- Templates: [GitHub: Awesome Copilot](https://github.com/github/awesome-copilot)

## Prompt file

cf. `66 - F-19 - Prompt Files in GitHub Copilot (h265).mkv`

## Links

- [Cursor IDE](https://cursor.com)
- [Windsurf IDE](https://windsurf.com/)
