#!/bin/bash

find . -name "*.$1" | xargs tar -cvf "$2"