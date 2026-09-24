#!/bin/bash
# Задача 1: Вывести отсортированный список пользователей

grep -o '^[^:]*' /etc/passwd | sort

# Задание 2:
awk '$2 > 0 {print $2, $1}' /etc/protocols | sort -nr | head -n 5

# Задание 3:
text="$1"

length=${#text}

border=""
for (( i=0; i<length+2; i++ )); do
    border+="-"
done

echo "+${border}+"
echo "| ${text} |"
echo "+${border}+"

# Задание 4:
if [ -z "$1" ]; then
    echo "Использование: $0 <имя_файла>"
    exit 1
fi

grep -o '[a-zA-Z_]\w*' "$1" | sort -u | xargs


# Задание 5:
if [ -z "$1" ]; then
    echo "Использование: $0 <файл_программы>"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Ошибка: Файл '$1' не найден."
    exit 1
fi

chmod +x "$1"

sudo cp "$1" /usr/local/bin/

echo "Утилита '$1' успешно зарегистрирована."


# Задание 6:
for file in files/*.{c,js,py}; do
    if [ -f "$file" ]; then
        head -n 1 "$file" | grep -qE '^(//|/\*|#)' && echo "$file: Есть" || echo "$file: Нет"
    fi
done


# Задание 7:
find "$1" -type f -exec md5sum {} + | sort | uniq -w32 -D

# Задание 8:
find . -name "*.$1" | xargs tar -cvf "$2"

# Задание 9:
sed 's/    /\t/g' "$1" > "$2"

# Задание 10:
find "$1" -type f -empty