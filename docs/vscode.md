# VSCode

## Table of Contents

1. [Install](#install)
2. [Config](#config)
3. [Extensions](#extensions)
4. [Usage](#usage)
5. [Hotkeys](#hotkeys)
6. [Python](#python)
7. [Python Extensions](#python-extensions)
8. [Git](#git)
9. [Markdown](#markdown)
10. [YAML](#yaml)
11. [SQL](#sql)
12. [Links](#links)

## Install <a name="install"></a>

- use [extensions-install.sh](../extensions-install.sh)

### Update from .deb downloaded via VSCode

```bash
cd /home/chris/Downloads
sudo apt update
sudo dpkg -i code*amd64.deb
sudo apt-get install -f
```

## Config <a name="config"></a>

- Easiest to get a profile running is to import a profile from file or github gists
- Theme: Dark Modern (`Ctrl+Shift+P` -> _theme_)
- Icons: `vscode-icons`

## Extensions <a name="extensions"></a>

- cf. [extensions-install.sh](/extensions-install.sh)

### Optional Extensions

- Code Spell Checker
- ToDo Tree (shows files with `TODO`s or `FIXME`s in them)
- Diff
- CSV (Excel Viewer), PDF Viewer
- Code Runner
- Live Share

## General Usage <a name="usage"></a>

### GUI

- single click on a file in explorer opens a file temporarily (file name in italics); double click on file name (in italics) to open permanently.
- use `Ln xy` in status bar to jump to line (or `Ctrl+G`)

### settings.json

`Ctrl+Shift+P` -> _Preferences: Open User Settings (JSON)_

## Hotkeys <a name="hotkeys"></a>

### General

- **Open command palette**: `Ctrl+Shift+P` or `F1`
- **Quick open (or go to) file**: `Ctrl+P`
- **Circle through file tabs**: `Ctrl+Tab`

- **Quick navi within file**: `Ctrl+P` -> _@_
- **Go to line**: `Ctrl+G`

- **Go to definition**: `F12`; alternatively: `Ctrl+Shift+P` + _go to definition_ (or _peek definition_)

### Intellisense

- **Auto-completion**: `Ctrl+Space` to see suggestions; click on desired
  one and `Ctrl+Space` again to see its doc
- **AutoDocstring**: `Ctrl+Shift+P` + _Generate Docstring_ (via extension `autodocstring`)
- Test **Mintlify** Doc Writer!

### Editing

- **Cut line (empty selection)**: `Ctrl+X`
- **Copy line (empty selection)**: `Ctrl+C`
- **Delete line**: `Ctrl+Shift+K`
- **Move line (or selection) up/down**: `Alt+↑` / `↓`

### Code Comments

- **Toggle line comment**: `Ctrl+/`
- **Toggle block comment**: `Shift+Alt+A`
- **Indent block**: `Tab`
- **Unindent block**: `Shift + Tab`

### Multi-cursor

- **Insert Cursor**: `Alt+Click`

### Search & Replace

- `Strg+F`; `Strg+H`
- **Search sidebar** to search / search & replace in all files

### Snippets

- cf. `~/.config/Code/User/snippets/python.json`
- **Insert snippet**: `Ctrl+Shift+P` -> _Snippets_ (e.g. elif-finally,
  try-ecept-finally-block)

### Formatting

- **Format Document**: `Ctrl+Shift+I`

### Refactoring

- **Refactor selection**: `Ctrl+Shift+R`
- **Rename variable everywhere**: mark + `right-click` -> Rename

### Peek & Find

- hover over function or class, `Ctrl+Click` to open file with the corresponding
  function oder right click -> peek definition

## Python <a name="python"></a>

### Virtual Environment

```bash
# Create a virtual environment
# python3.11 -m venv .venv
python -m venv .venv
```

```bash
# Activate the virtual environment (optional, but recommended)
# On Windows: .venv\Scripts\activate
source .venv/bin/activate
```

```bash
# Install dependencies
pip install -r requirements.txt

# Install development dependencies
pip install -r requirements-dev.txt
```

### Debugging

- [recipes at Microsoft's GitHub](https://github.com/microsoft/vscode-recipes)
- `Shift+Enter`: run selection in Python terminal

### launch.json

put in workspace directory: `.vscode/launch.json`

```json
{
  // Use IntelliSense to learn about possible attributes.
  // Hover to view descriptions of existing attributes.
  // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Python Debugger: Current File with Arguments",
      "type": "debugpy",
      "request": "launch",
      "program": "${file}",
      "console": "integratedTerminal",
      "args": ["runserver", "--noreload", "--nothreading"]
    }
  ]
}
```

## Python Extensions <a name="python-extensions"></a>

- `ms-python.python`: The main Python extension for VS Code. Enables IntelliSense, linting, virtual environments, Jupyter support, etc.
- `ms-python.mypy-type-checker`: Adds MyPy integration (type checking).
- `charliermarsh.ruff`: Official Ruff extension. Provides linting, autofixes, and import sorting using Ruff.
- `ms-python.black-formatter`: Official Black integration for formatting Python files.
- `ms-python.debugpy`: Debugging backend for the Python extension. Required for breakpoints, step-through, etc.

- `frhtylcn.pythonsnippets`: Adds Python code snippets (e.g. common functions, classes, boilerplate). great if you use snippet shortcuts (like typing `def` and hitting Tab).
- `njpwerner.autodocstring`: `Ctrl+Shift+P` + _Generate Docstring_ to auto-generates Python docstrings

### Obsolete extensions:

- `ms-python.autopep8`: Uses the old `autopep8` formatter. Replaced by Black or Ruff.
- `ms-python.flake8`: Adds support for Flake8 linter; Replaced by Ruff.
- `ms-python.pylint`: Pylint linter. Similar to Flake8, but also covered by Ruff.
- `ms-python.isort`: Provides import sorting via `isort`. Replaced by Ruff.

## Git <a name="git"></a>

- s. [github.md](/docs/github.md)
- Extension `gitLens`

## Markdown <a name="markdown"></a>

- Extensions: e.g., [Markdown PDF](https://marketplace.visualstudio.com/items?itemName=yzane.markdown-pdf), ...
- `Ctrl+Space`: Intellisense giving code snippets for formatting are at the bottom

## YAML <a name="yaml"></a>

- Extension for formatting: e.g. [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) (by Red Hat; incl. validation, error detection, hover support), ...

## SQL <a name="sql"></a>

- Extension `SQLTools` + install driver for specific SQL dialect / database type

## Remote Development

- Extension `Remote Development` (includes **`Remote SSH`**)
- Extension `Docker`

## Links <a name="links"></a>

### General

- [Google Python Style Guide](https://google.github.io/styleguide/pyguide.html)
- [Conventional Commits Cheat Sheet](https://gist.github.com/qoomon/5dfcdf8eec66a051ecd85625518cfd13); [ConventionalCommmits.org](https://www.conventionalcommits.org/en/v1.0.0/#summary)
- [Markdown Basic Syntax](https://www.markdownguide.org/basic-syntax/)
- [The Ultimate Guide to Markdown](https://gist.github.com/cuonggt/9b7d08a597b167299f0d)
- [https://code.visualstudio.com/docs/python/formatting](https://code.visualstudio.com/docs/python/formatting)
- [GitHub Copilot](https://github.com/features/copilot)
- [Tabnine](https://www.tabnine.com/)

### Python
