# VS Code Configuration for Python (3.11)

This repository contains a minimal set of configuration files for Visual Studio Code tailored to Python development. The focus is on providing a productive and clean coding environment with features like linting, formatting, debugging, and keybindings that streamline workflow.

## Files Tracked

- `settings.json`:
  Defines settings related to Python development, including editor behaviors, linting, and formatting. It supports easy switching between formatters like `autopep8`, `black`, and `ruff`.

- `keybindings.json`:
  Contains custom keybindings

- `docs/`: mostly Markdown files for different topics

## Key Features

- **Custom interpreter path**: `${workspaceFolder}/.venv/bin/python`
- **Pylint** and **Mypy** are enabled for static code analysis.
- **Black** as standard formatter
- **Ruff** is used for organizing imports and enforcing code style.

## Custom Keybindings

- `alt+b`: insert an interactive Python debugger (`ipdb`) breakpoint (`import ipdb; ipdb.set_trace()`)

## How to Use

1. Clone this repository into your VS Code user settings folder:

   - **Linux**: `cd ~/.config/Code/User`
   - **macOS**: `cd ~/Library/Application Support/Code/User`
   - **Windows**: `cd %APPDATA%\Code\User`

2. Install recommended extensions for Python development in VS Code:
   - Python (ms-python)
   - Mypy Type Checker
   - Black Formatter
   - Pylance
   - autopep8
   - Ruff
