#!/bin/sh

export HOME="/home/jacob/.local/homes/mozilla"
[ -d "$HOME" ] || mkdir -p "$HOME"

exec /usr/bin/firefox "$@"
