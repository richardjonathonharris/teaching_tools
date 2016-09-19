#!/usr/local/bin/bash

GIST_URL="$(gist -p $1)"
echo "https://presentations.generalassemb.ly/${GIST_URL##*/}"
