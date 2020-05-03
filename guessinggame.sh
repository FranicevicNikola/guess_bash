read -p "If you win, how many times do you want to be congratulated? " numcongratz
read -p "How many files are in this directory? " numguess
numfiles=$(ls -1 | wc -l)


congrats() {
    for ((i = 0 ; i < $numcongratz ; i++)); do
      echo "\$YOU WON$"
    done
}

while [[ $numguess -ne $numfiles ]]; do
    if [[ $numguess -lt $numfiles ]]; then
      read -p "Too low! Try again! " numguess
    elif [[ $numguess -gt numfiles ]]; then
      read -p "Too high! Try again! " numguess
    fi
done

congrats



