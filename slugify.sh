#!/bin/sh

echo "$1" | iconv -c -t ascii//TRANSLIT | sed -E 's/[~^]+//g;s/[^a-zA-Z0-9]+/-/g;s/^-+|-+$//g' | tr '[:upper:]' '[:lower:]'
