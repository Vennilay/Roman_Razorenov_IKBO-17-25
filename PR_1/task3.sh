#!/bin/bash
# Задача 3: Программа banner для вывода текстов в рамке
text="$1"

length=${#text}

border=""
for (( i=0; i<length+2; i++ )); do
    border+="-"
done

echo "+${border}+"
echo "| ${text} |"
echo "+${border}+"