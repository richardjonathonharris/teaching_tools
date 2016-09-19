#!/usr/local/bin/bash

`pandoc -t revealjs -s -S -i $1 -V theme:league -o ~/reveal.js/decks/ga/staging.html`
`grep -r -l 'reveal.js' ~/reveal.js/decks/ga/staging.html | xargs sed 's#reveal.js/#../../#g' > ~/reveal.js/decks/ga/$2.html`
echo "http://localhost:8000/decks/ga/$2.html"
