#!/usr/bin/env bash
    
touch /tmp/std.out
touch /tmp/stderr.out

std_path=/tmp/std.out
stderr_path=/tmp/stderr.out

count=0

while true; do
    count=$((count+1))
    ./random_number.sh > $std_path 2> $stderr_path || break
done

cat $std_path
cat $stderr_path
echo "Totally $count loops to reach an error"
