#!/bin/bash
# Задача 2: 5 наибольших портов

awk '$2 > 0 {print $2, $1}' /etc/protocols | sort -nr | head -n 5