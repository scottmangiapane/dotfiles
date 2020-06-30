#!/bin/bash

echo "Creating a new ed25519 SSH key..."

ssh-keygen -t ed25519 -C ''
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

echo "Done."
echo "You can copy the public key to a remote server like this:"
echo "ssh-copy-id -i ~/.ssh/id_ed25519 user@host"
