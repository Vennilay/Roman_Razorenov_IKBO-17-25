    #!/bin/bash

    for file in files/*.{c,js,py}; do
        if [ -f "$file" ]; then
            head -n 1 "$file" | grep -qE '^(//|/\*|#)' && echo "$file: Есть" || echo "$file: Нет"
        fi
    done