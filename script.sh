#!/bin/ash

# install the alpien build sdk
sudo apk add alpine-sdk

# generate signing keys
abuild-keygen -a -i

# subshell with proper groups in devcontainer
sudo addgroup vscode abuild
exec sudo su -l $USER
