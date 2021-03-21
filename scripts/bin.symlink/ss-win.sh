#!/usr/bin/env bash

DATE=$(date +%Y-%m-%dT%H:%M:%S)

mkdir -p "${HOME}/Downloads/Screenshots"

gnome-screenshot -w -f "${HOME}/Downloads/Screenshots/${DATE}.png"
