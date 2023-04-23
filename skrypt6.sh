#!/bin/bash

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
  echo "Dostępne opcje:"
  echo "--date - wyświetla dzisiejszą datę"
  echo "--logs [liczba] - tworzy podaną liczbę plików logx.txt i wypełnia je informacjami"
elif [ "$1" = "--logs" ] || [ "$1" = "-l" ]; then
  if [ "$2" ]; then
    for i in $(seq 1 "$2")
    do
      touch log"$i".txt
      echo "Nazwa pliku: log$i.txt" >> log"$i".txt
      echo "Nazwa skryptu: skrypt.sh" >> log"$i".txt
      echo "Data utworzenia: $(date)" >> log"$i".txt
    done
    echo "Utworzono $2 plików logx.txt"
  else
    for i in {1..100}
    do
      touch log"$i".txt
      echo "Nazwa pliku: log$i.txt" >> log"$i".txt
      echo "Nazwa skryptu: skrypt.sh" >> log"$i".txt
      echo "Data utworzenia: $(date)" >> log"$i".txt
    done
    echo "Utworzono 100 plików logx.txt"
  fi
elif [ "$1" = "--date" ] || [ "$1" = "-d" ]; then
  echo "Dzisiejsza data to: $(date)"
else
  echo "Nieznane polecenie. Użyj --help lub -h, aby wyświetlić dostępne opcje."
fi
