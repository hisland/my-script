#!/bin/bash

cat >> ~/.gitconfig <<DOC

[alias]
  d = diff --color
  ds = diff --stat --color
  dc = diff --color --cached
  dcs = diff --color --cached --stat
  s = status
  cm = commit -m
  cn = commit --no-verify -m
  ca = commit --amend
  nc = "!git commit -m \"`date +'%Y-%m-%d %T'` normal commit\""
  co = checkout
  ccm = checkout --merge
  b = branch
  l = log --stat --patch --color
  lf = log --stat --patch --color --follow
  l1 = log --stat --patch --color -1
  ls = log --stat --color
  lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset' --abbrev-commit
  lgv = log --no-merges --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %C(bold blue)<%an>%Creset' --abbrev-commit
  lgr = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
  # lga = log --all --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset' --abbrev-commit
  lga = log --all --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen%cd %C(bold blue)<%an>%Creset' --abbrev-commit --date=format:'%Y-%m-%d %H:%M:%S'
  lgar = log --all --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
  ft = fetch --all --prune --prune-tags
  ftone = fetch --prune --prune-tags
  spi = stash pop --index
  mnn = merge --no-commit --no-ff
  mab = merge --abort
  ms = merge --squash
  dtool = difftool
  mtool = mergetool

DOC
