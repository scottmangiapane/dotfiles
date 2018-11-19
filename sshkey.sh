#!/bin/bash

echo "This script will generate a new SSH key and add it to ssh-agent."
echo "Enter your email and press [ENTER]: "
read email
echo "Creating SSH key for $email..."

ssh-keygen -t rsa -b 4096 -C "$email"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

echo "Done."
echo "You can copy the public key to a remote server like this:"
echo "ssh-copy-id -i ~/.ssh/id_rsa user@host"
