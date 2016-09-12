#!/usr/local/bin/bash

filename="$1"

`jupyter nbconvert $1 --to slides --reveal-prefix ../..`

new_html="${filename::-5}slides.html"

echo $new_html

`mv $new_html ~/reveal.js/decks/ga/ready.html`
echo "localhost:8000/decks/ga/ready.html"
