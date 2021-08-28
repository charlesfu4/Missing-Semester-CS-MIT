## 1. Take this short interactive regex tutorial

<img width="809" alt="Screenshot 2021-08-17 at 09 57 00" src="https://user-images.githubusercontent.com/14807898/129691778-8ef44548-110f-452c-8099-b9736c896c9d.png">

## 2. Find the number of words (in /usr/share/dict/words) that contain at least three as and don’t have a 's ending.

```shell
cat words | tr '[A-Z]' '[a-z]' | grep '^.*a.*a.*a.*[^a]$'
```

- What are the three most common last two letters of those words?

```shell
cat words | tr '[A-Z]' '[a-z]' | grep '^.*a.*a.*a.*[^a]$' | sed -E 's/^.*(.{2})$/\1/' | sort | uniq -c | sort -nk1,1 | tail -n3
```

|counts | chars|
|-------|------|
| 637   | ae   |
| 763   | an   |
|1039   | al   |

- How many of those two-letter combinations are there?

```shell
cat words | tr '[A-Z]' '[a-z]' | grep '^.*a.*a.*a.*[^a]$' | sed -E 's/^.*(.{2})$/\1/' | sort | uniq -c | wc -l
```

Answer: 132

- Which combinations do not occur?

```shell
## To save the ends chars in a file

cat words | tr '[A-Z]' '[a-z]' | grep '^.*a.*a.*a.*[^a]$' | sed -E 's/^.*(.{2})$/\1/' | sort | uniq > ~/existchars

## To save the all possible ends chars in another file

sudo awk 'BEGIN {for(i=97; i<123; i++) for(j=97 ;j<123; j++) printf("%c%c\n", i, j)}' > ~/duochars

## Comparison of two files

comm -13 existchars duochars
```

Totally: 544
