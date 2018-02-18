#!/bin/bash

echo "This script will generate a new ssh key and add it to ssh agent."
echo "Enter your email and press [ENTER]: "
read email
echo "Creating ssh key for $email..."

ssh-keygen -t rsa -b 4096 -C "$email"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

echo "Done."
