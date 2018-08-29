#!/bin/bash

echo "Making new global npm directory"
mkdir "${HOME}/.npm-packages"

echo "Let bash see this folder"
NPM_PACKAGES="${HOME}/.npm-packages"

echo "Get npm to use this directory"
prefix=${HOME}/.npm-packages

echo "Let node find them..."
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

echo "Backing up .bashrc"
cp ${HOME}/.bashrc ${HOME}/.bashrc_backup 

echo "Adding lines to .bashrc"
printf "PATH=\"$NPM_PACKAGES/bin:$PATH\"\n\
# Unset manpath so we can inherit from /etc/manpath via the `manpath`\n\
# command\n\
unset MANPATH # delete if you already modified MANPATH elsewhere in your config\n\
MANPATH=\"$NPM_PACKAGES/share/man:$(manpath)\"\n" >> ${HOME}/.bashrc

# Taken from https://stackoverflow.com/questions/18088372/how-to-npm-install-global-not-as-root