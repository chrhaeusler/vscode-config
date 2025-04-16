# Notes and stuff

## Table of Contents

1. [Basics](#basics)
2. [Notes from Course](#notes-from-course)
3. [Links](#links)


## Basics <a name="basics"></a>

### Config

- **Theme**: Dark Modern (Ctrl+Shift+P -> theme)
- *Icons*: vscode-icons


## Notes from Course <a name="notes-from-course"></a>

### Intellisense

- **Auto-completion**: Press `Ctrl+Space` to see suggestions; click on desired 
one and `Ctrl+Space` again to see its doc

### Code Comments

- Toggle line comment: `Ctrl+/` 

### Formatting
Format Document: `Ctrl+Shift+I`

### Refactoring
- Refactor selection: `Ctrl+Shift+R`
- Rename variable everywhere: mark+`right-click` → Rename

### Snippets
- `~/.config/Code/User/snippets/python.json`
- Insert snippet: `Ctrl+Shift+P` → _Snippets_ (e.g. elif-finally,
try-ecept-finally-block)

### Peek & Find
- hover over function or class, `Ctrl+Click` to open file with the corresponding
function oder right click → peek definition

### Optional Extensions
- Code Spell Checker
- Code Runner
- Live Share

---

### Virtual Environment
```bash
# Create a virtual environment
python -m venv .venv

# Activate the virtual environment (optional, but recommended)
# On Windows: .venv\Scripts\activate
# On Unix/Linux/Mac: source .venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Install development dependencies
pip install -r requirements-dev.txt
```

### Debugging

- [recipes at Microsoft's GitHub](https://github.com/microsoft/vscode-recipes)


#### launch.json
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
            "args": [
                "runserver",
                "--noreload",
                "--nothreading"
            ]
        }
    ]
}
```

### Markdown
- [The Ultimate Guide to Markdown](https://gist.github.com/cuonggt/9b7d08a597b167299f0d)

### YAML

### SQL

## Links <a name="links"></a>

### General

- [Google Python Style Guide](https://google.github.io/styleguide/pyguide.html)
- [The Ultimate Guide to Markdown](https://gist.github.com/cuonggt/9b7d08a597b167299f0d)
- [https://code.visualstudio.com/docs/python/formatting](https://code.visualstudio.com/docs/python/formatting)
- [GitHub Copilot](https://github.com/features/copilot)
- [Tabnine](https://www.tabnine.com/)


### Python
-