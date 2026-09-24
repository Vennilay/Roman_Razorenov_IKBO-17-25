#!/bin/bash
# uniq -w32 -D оставляет и выводит только те строки, где первые 32 символа (сам хэш) совпадают

find "$1" -type f -exec md5sum {} + | sort | uniq -w32 -D