#!/bin/bash
rm -f extensions-install.sh

cat >> extensions-install.sh << 'EOF'
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
EOF

# Append currently installed extensions
code --list-extensions --show-versions | xargs -L 1 echo code --install-extension >> extensions-install.sh

chmod +x extensions-install.sh