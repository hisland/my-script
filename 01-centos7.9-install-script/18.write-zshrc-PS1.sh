#!/bin/bash

if [ -n "$1" ]; then
    cat >> ~/.zshrc <<DOC

export PS1="%{\$bg[magenta]%} $1 %{\$reset_color%}"${PS1}

DOC
else
    echo "请输入主机名"
fi
