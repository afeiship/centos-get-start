#!/usr/bin/env bash

# download
cd ~
wget https://github.com/afeiship/dotfiles/raw/master/ssh.tgz
tar zxvf ssh.tgz

# permission
sudo chown -R $(whoami) .ssh

## chown
cd .ssh
chmod 600 *
chmod 600 *.*

## destroy:
cd ~
rm -rf ssh.tgz