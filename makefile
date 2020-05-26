#/usr/bin/env bash
#guessinhgame by meet oza

all: README.md
README.md: guessinggame.sh
	touch README.md
	echo "# guessinggame by meet oza" > README.md
	echo $$(date) >> README.md
	wc -l guessinggame.sh >> README.md
