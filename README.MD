# VS Code Configuration for Python (3.11)

This repository contains a minimal set of configuration files for Visual Studio Code tailored to Python development. The focus is on providing a productive and clean coding environment with features like linting, formatting, debugging, and keybindings that streamline workflow.

## Files Tracked

- [settings.json](/settings.json): user settings of VSCode
- [keybindings.json](/keybindings.json): custom keybindings
- [extensions-install.sh](/extensions-install.sh): Installs VSCode (debian 64-bit), if not installed already; installs the extensions (that I use)
- [docs/](/docs): markdown files for different topics

## Key Features

- **Custom interpreter path**: `${workspaceFolder}/.venv/bin/python`
- **Mypy** are enabled for static code analysis.
- **Black** as standard formatter
- **Ruff** is used for organizing imports and enforcing code style.

## Custom Keybindings

- `alt+b`: insert an interactive Python debugger (`ipdb`) breakpoint (`import ipdb; ipdb.set_trace()`)

## How to Use

1. Clone / copy this repository into your VS Code user settings folder:

   - **Linux**: `cd ~/.config/Code/User`
   - **macOS**: `cd ~/Library/Application Support/Code/User`
   - **Windows**: `cd %APPDATA%\Code\User`

2. Install extensions

```bash
./extensions-install.sh
```
