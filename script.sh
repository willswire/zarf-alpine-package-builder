#!/bin/ash

# subshell with proper groups in devcontainer
exec sudo su -l $USER
cd /workspaces/apk-add-zarf/zarf