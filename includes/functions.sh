#!/usr/bin/env bash

yn() {
  read -p "$1 (y/n): "

  while [[ $REPLY =~ ^[^YyNn]$ ]]; do
    read -p "Wrong answer try again! Options are [y, n]: "
  done
}
