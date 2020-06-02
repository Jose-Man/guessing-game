all:
	echo "# GESSING-GAME" > README.md
	echo "## The date and time at which last **make** was run is:" >> README.md
	date >> README.md
	echo "## The number of lines of **gessinggame.sh** is:" >> README.md
	wc -l guessinggame.sh | egrep -o '[0-9]+' >> README.md
