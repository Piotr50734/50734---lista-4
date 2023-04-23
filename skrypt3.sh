#!/bin/bash

if [[ "$1" == "--logs" ]]; then
    for i in {1..100}
    do
        filename="log$i.txt"
        echo "Nazwa pliku: $filename" > $filename
        echo "Nazwa skryptu: $0" >> $filename
        echo "Data utworzenia: $(date)" >> $filename
    done
    echo "Utworzono 100 plików log"
fi
