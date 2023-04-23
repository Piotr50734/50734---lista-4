if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
elif [ "$1" = "--logs" ] || [ "$1" = "-l" ]; then
elif [ "$1" = "--date" ] || [ "$1" = "-d" ]; then
else
  "Nieznane polecenie. Użyj -help lub -h, aby wyświetlić dostępne opcje."
fi
