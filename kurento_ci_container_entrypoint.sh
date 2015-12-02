#!/bin/bash

[[ -n "$1" ]] || { echo "No script to run specified. Need one to run after preparing the environment"; exit 1 }
BUILD_COMMAND=$1

PATH=$PATH:$(realpath $(dirname "$0"))

echo "Preparing environment..."

if [ -n "$KEY" ]; then
  echo "Add private key to ssh agent"
  eval $(ssh-agent -s)
  ssh-add $KEY
fi

if [ -f /root/.ssh/config ]; then
  echo "Set correct owner & permissions to /root/.ssh/config file"
  chown root:root $SSH_CONFIG
  chmod 600 $SSH_CONFIG
  chown root:root $KEY
  chmod 600 $KEY
  ls -la /root
  ls -la /root/.ssh
  ls -la /opt
fi

exec "$BUILD_COMMAND"
