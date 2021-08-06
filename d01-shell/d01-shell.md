```shell
cd /tmp

# using the sourced mcd from the lesson
mcd missing

# use touch to create a new file semester
touch semester

# write the lines to the semester file
echo '#!/bin/sh' > semester
echo 'curl --head --silent https://missing.csail.mit.edu' >> semester

# executing the file leads to permission denied
./semester

# lift the permission by chmod
chmod 0700 semester

# Use | and > to write the last modified date output by semester in to last-modified.txt
./semester | grep "Last-Modified" > ~/last-modified.txt

# Mac reads battery level
pmset -g batt

# Mac reads CPU die temp
sudo powermetrics --samplers smc |grep -i "CPU die temperature"

```
