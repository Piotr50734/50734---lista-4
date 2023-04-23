#!/bin/bash

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
  echo "Dostępne opcje:"
  echo "--date, -d - wyświetla dzisiejszą datę"
  echo "--logs [liczba], -l [liczba] - tworzy podaną liczbę plików logx.txt i wypełnia je informacjami"
  echo "--error [liczba], -e [liczba] - tworzy podaną liczbę plików errorx/errorx.txt i wypełnia je informacjami"
elif [ "$1" = "--date" ] || [ "$1" = "-d" ]; then
  echo "Dzisiaj jest $(date)"
elif [ "$1" = "--logs" ] || [ "$1" = "-l" ]; then
  if [ -n "$2" ]; then
    for ((i=1;i<=$2;i++)); do
      echo "Nazwa pliku: log$i.txt" > log$i.txt
      echo "Nazwa skryptu: $(basename $0)" >> log$i.txt
      echo "Data utworzenia: $(date)" >> log$i.txt
    done
  else
    for ((i=1;i<=100;i++)); do
      echo "Nazwa pliku: log$i.txt" > log$i.txt
      echo "Nazwa skryptu: $(basename $0)" >> log$i.txt
      echo "Data utworzenia: $(date)" >> log$i.txt
    done
  fi
elif [ "$1" = "--error" ] || [ "$1" = "-e" ]; then
  if [ -n "$2" ]; then
    for ((i=1;i<=$2;i++)); do
      mkdir -p error$i
      echo "Nazwa pliku: error$i.txt" > error$i/error$i.txt
      echo "Nazwa skryptu: $(basename $0)" >> error$i/error$i.txt
      echo "Data utworzenia: $(date)" >> error$i/error$i.txt
    done
  else
    for ((i=1;i<=100;i++)); do
      mkdir -p error$i
      echo "Nazwa pliku: error$i.txt" > error$i/error$i.txt
      echo "Nazwa skryptu: $(basename $0)" >> error$i/error$i.txt
      echo "Data utworzenia: $(date)" >> error$i/error$i.txt
    done
  fi
else
  echo "Nieznane polecenie. Użyj --help lub -h, aby wyświetlić dostępne opcje."
fi
