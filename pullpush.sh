#!/usr/bin/env bash

if [ $# -eq 0 ] ; then
  echo "Usage:
  ./pullpush.sh 'the commit message'"
  exit
fi

git add .
git status
read -p " Press Ctrl+C to exit, press any enter key to check the diff..
"

git diff --staged
echo 'Going to commit with message: '\"$*\"
read -p " Press Ctrl+C to exit, press any enter key to really commit..
"

git commit -m "$*" && git pull --no-edit && git push origin main
