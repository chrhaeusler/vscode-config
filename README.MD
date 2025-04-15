# VS Code Configuration for Python (3.11)

This repository contains a minimal set of configuration files for Visual Studio Code tailored to Python development. The focus is on providing a productive and clean coding environment with features like linting, formatting, debugging, and keybindings that streamline workflow.

## Files Tracked

- **`settings.json`**:
  Defines settings related to Python development, including editor behaviors, linting, and formatting. It supports easy switching between formatters like `autopep8`, `black`, and `ruff`.

- **`keybindings.json`**:
  Contains custom keybindings

## Key Features

- **Custom interpreter path**: `${workspaceFolder}/.venv/bin/python`

- **Linting & Code Quality Tools**:
  - **Pylint** and **Mypy** are enabled for static code analysis.
  - **Ruff** is used for organizing imports and enforcing code style.

- **Formatters**:
  - **Default**: `autopep8` with a max line length of 80 characters.
  - **Alternative**: Support for switching to `black` or using `ruff` for lint-fixing on save.


## Custom Keybindings

- **Alt+b**: insert an interactive Python debugger (`ipdb`) breakpoint (`import ipdb; ipdb.set_trace()`)


## How to Use
1. Clone this repository into your VS Code user settings folder:
    - **Linux**: `cd ~/.config/Code/User`
    - **macOS**: `cd ~/Library/Application Support/Code/User`
    - **Windows**: `cd %APPDATA%\Code\User`
2. Ensure you have Python 3.11 installed and create a virtual environment in your project directory:

     ```
     python3.11 -m venv .venv
     ```
3. Install recommended extensions for Python development in VS Code, e.g.:
     - Python (ms-python)
     - Pylance
     - autopep8
     - Ruff
