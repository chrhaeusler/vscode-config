#!/bin/bash
rm extensions-install.sh

cat >> extensions-install.sh << EOF
#!/bin/bash

# Install current version of vscode for Linux Debian 64bit
# wget -P /home/{username}/ -O vscode-current.deb https://go.microsoft.com/fwlink/?LinkID=760868 
# sudo apt install /home/{username}/vscode-current.deb

# Install vscode extensions
EOF

code --list-extensions --show-versions | xargs -L 1 echo code --install-extension >> extensions-install.sh

chmod +x extensions-install.sh
