README.md:
	touch README.md
	echo "#UnixWorkbench:guessinggame.sh">README.md
	echo "\nThis makefile was created: ">>README.md
	date >> README.md
	echo "The guessing game script has the following number of lines:">>README.md
	wc -l guessinggame.sh|egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
