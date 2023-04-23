#!/bin/bash

if [ "$1" = "--init" ]; then
  # Clone repository
  git clone <adres-repozytorium>

  # Add script directory to PATH
  echo "export PATH=$PATH:$(pwd)/skrypt" >> ~/.bashrc
  source ~/.bashrc

  echo "Repozytorium zostało sklonowane, a skrypt został dodany do PATH."
else
  echo "Nieznane polecenie. Użyj --help, aby wyświetlić dostępne opcje."
fi
