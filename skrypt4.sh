#!/bin/bash
if [ "$1" != "" ]; then
    files="$1"
else
    files=100
fi

for ((i=1;i<=$files;i++)); do
    name="log$i.txt"
    echo "Nazwa pliku: $name, nazwa skryptu: $0, data: $(date)" > $name
done
