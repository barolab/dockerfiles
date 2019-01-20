#!/bin/bash

set -e
set -o pipefail

echo "Running vscode on directory $1"
chsh bash
su user -p -c "/usr/share/code/code --verbose $1"
