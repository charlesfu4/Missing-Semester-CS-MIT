## 1. List with these conditions

- Includes all files
- Sizes are human readable
- Files ordered by recency
- Output colorized

```shell
ls -lAhtG
```

## 2. Write bash functions

- macro.sh: to save the current dir in some manner
- polo.sh: return back to the dir saved by the marco function
    
```shell

# source the shell files first
source macro.sh
source polo.sh

# then use macro to memorize the current dir
macro

# afterwards when you want to come back to the saved dir
polo
```

## 3. Write a bash to capture stdout and stderr

- Write a bash script that runs the following script until it fails and captures its standard output and error streams to files and prints everything at the end. Bonus points if you can also report how many runs it took for the script to fail.

```shell
#!/usr/bin/env bash

n=$(( RANDOM % 100 ))

if [[ n -eq 42 ]]; then
    echo "Something went wrong"
    >&2 echo "The error was using magic numbers"
    exit 1
fi

echo "Everything went according to plan"

```

- Run the capture.sh by `./capture.sh`

## Make a zip from the recursively found html files

- Write a command that recursively finds all HTML files in the folder and makes a zip with them

```shell
find . -name '*.html' -print0 | xargs -0 tar cf htmls.tar
```
