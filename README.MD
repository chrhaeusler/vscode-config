# VS Code Configuration for Python (3.11)

This repository contains a minimal set of configuration files for Visual Studio Code tailored to Python development. The focus is on:

1. setting up VS Code quickly on a Debian Linux OS.
2. settings for a productive coding environment with features like linting, formatting, debugging, and keybindings.
3. some cheat sheets in `docs/`.

## Files

- [settings.json](/settings.json): user settings of VS Code
- [keybindings.json](/keybindings.json): custom keybindings
- [extensions-install.sh](/extensions-install.sh): Installs VS Code (debian 64-bit), if not installed already; installs extensions
- [docs/](/docs): cheat sheets as markdown files for different topics

## How to Use

1. Clone / copy this repository into your VS Code user settings folder:

   - **Linux**: `cd ~/.config/Code/User`

2. Install extensions

```bash
./extensions-install.sh
```
