#!/bin/bash
# Задача 4: Вывод идентификаторов C/C++/Java без повторений

if [ -z "$1" ]; then
    echo "Использование: $0 <имя_файла>"
    exit 1
fi

grep -o '[a-zA-Z_]\w*' "$1" | sort -u | xargs