#!/bin/bash

if [ "$1" = "--help" ]; then
  echo "Dostępne opcje:"
  echo "--date - wyświetla dzisiejszą datę"
  echo "--logs [liczba] - tworzy podaną liczbę plików logx.txt i wypełnia je informacjami"
else
  echo "Nieznane polecenie. Użyj --help, aby wyświetlić dostępne opcje."
fi
