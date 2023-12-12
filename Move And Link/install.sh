#!/bin/bash

# Check if ~/.local/bin is in the $PATH
if echo $PATH | grep -q "~/.local/bin"; then
   echo "~/.local/bin is already in the \$PATH"
else
   # If it's not in the $PATH, add it
   export PATH="$HOME/.local/bin:$PATH"
   echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
   echo "~/.local/bin has been added to the \$PATH"
   mkdir -p ~/.local/bin
fi
# Add the to the $PATH for only this user
mv mal.sh ~/.local/bin/mal
