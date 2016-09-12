#!/usr/local/bin/bash

`pandoc -t revealjs -s $1 -o ~/reveal.js/decks/ga/current.html`
`grep -r -l 'reveal.js' ~/reveal.js/decks/ga | xargs sed 's#reveal.js/#../../#g' > ~/reveal.js/decks/ga/ready.html`
echo "localhost:8000/decks/ga/ready.html"
