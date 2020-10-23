#!/bin/sh

export HOME="/home/jacob/.local/homes/steam"
[ -d "$HOME" ] || mkdir -p "$HOME"

exec /usr/bin/steam "$@"
