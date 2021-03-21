#!/usr/bin/env bash

DATE=$(date +%Y-%m-%dT%H:%M:%S)

mkdir -p "${HOME}/Downloads/Screenshots"

gnome-screenshot -a -f "${HOME}/Downloads/Screenshots/${DATE}.png"
