#!/bin/bash

# Install VS Code for Linux Debian 64-bit (only if not already installed)
# Set variables
DEST_DIR="$HOME/Downloads"
DEST_FILE="vscode-64bit-current.deb"
DEST_PATH="$DEST_DIR/$DEST_FILE"
VSCODE_URL="https://go.microsoft.com/fwlink/?LinkID=760868"

# Check if VS Code is already installed
if command -v code >/dev/null 2>&1; then
    echo "VS Code is already installed: $(code --version | head -n 1)"
else
    # Ensure Downloads directory exists
    mkdir -p "$DEST_DIR"

    # Download the latest .deb
    echo "Downloading VS Code to $DEST_PATH..."
    wget -O "$DEST_PATH" "$VSCODE_URL"

    # Install using apt
    echo "Installing VS Code..."
    sudo apt install -y "$DEST_PATH"

    # Confirm install
    if command -v code >/dev/null 2>&1; then
        echo "✅ VS Code was successfully installed: $(code --version | head -n 1)"
    else
        echo "❌ Installation failed."
        exit 1
    fi
fi

# Install extensions
echo
echo "📦 Installing extensions..."

code --install-extension charliermarsh.ruff@2025.24.0
code --install-extension christian-kohler.path-intellisense@2.10.0
code --install-extension docker.docker@0.11.0
code --install-extension donjayamanne.githistory@0.6.20
code --install-extension esbenp.prettier-vscode@11.0.0
code --install-extension frhtylcn.pythonsnippets@1.0.2
code --install-extension github.copilot@1.341.0
code --install-extension github.copilot-chat@0.28.5
code --install-extension github.github-vscode-theme@6.3.5
code --install-extension mhutchie.git-graph@1.30.0
code --install-extension ms-azuretools.vscode-containers@2.0.3
code --install-extension ms-azuretools.vscode-docker@2.0.0
code --install-extension ms-python.black-formatter@2025.2.0
code --install-extension ms-python.debugpy@2025.8.0
code --install-extension ms-python.mypy-type-checker@2025.2.0
code --install-extension ms-python.python@2025.8.1
code --install-extension ms-python.vscode-pylance@2025.6.2
code --install-extension ms-toolsai.jupyter@2025.6.0
code --install-extension ms-toolsai.jupyter-keymap@1.1.2
code --install-extension ms-toolsai.jupyter-renderers@1.3.0
code --install-extension ms-toolsai.vscode-jupyter-cell-tags@0.1.9
code --install-extension ms-toolsai.vscode-jupyter-slideshow@0.1.6
code --install-extension ms-vscode-remote.remote-containers@0.417.0
code --install-extension njpwerner.autodocstring@0.6.1
code --install-extension pkief.material-icon-theme@5.24.0
code --install-extension redhat.vscode-yaml@1.18.0
code --install-extension tamasfe.even-better-toml@0.21.2
code --install-extension vscode-icons-team.vscode-icons@12.13.0
code --install-extension yzane.markdown-pdf@1.5.0
