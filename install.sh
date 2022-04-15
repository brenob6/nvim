#! /usr/bin/sh

sudo apt install curl unzip neovim

curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
cme:hmod +x /tmp/win32yank.exe sudo mv /tmp/win32yank.exe /usr/local/bin/

mv -n .* ~/

rm ~/install.sh
