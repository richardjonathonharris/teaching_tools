#!/usr/local/bin/bash

`pandoc -t revealjs -s $1 -o ~/reveal.js/decks/ga/$2.html`
`grep -r -l 'reveal.js' ~/reveal.js/decks/ga | xargs sed 's#reveal.js/#../../#g' > ~/reveal.js/decks/ga/$2.html`
echo "http://localhost:8000/decks/ga/ready.html"
