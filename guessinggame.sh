#/bin/bash
#File: guessinggame.sh

function testnumber {
 if [[ $1 = $2 ]]
   then
     echo "Your guess of $1 is just right"
   elif [[ $1 -gt $2 ]]
   then
     echo "Your guess of $1 is too high"
   elif [[ $1 -lt $2 ]]
   then
     echo "Your guess of $1 is too low"
 fi
}

filenum=$(ls | wc -l)

while [[ $response -ne $filenum ]]
  do  
    echo "Type how many files do you think is in the current directory and press Enter:"
     read response
    echo "You guessed $response"
   testnumber $response $filenum
  done

echo "Thanks for playing, you guess that the actual number of files is $filenum is correct"
