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
