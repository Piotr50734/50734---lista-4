#!/bin/bash

if [ "$1" = "--init" ]; then
  git clone <https://github.com/Piotr50734/50734---lista-4>

  echo "export PATH=$PATH:$(pwd)/skrypt" >> ~/.bashrc
  source ~/.bashrc

  echo "Repozytorium zostało sklonowane, a skrypt został dodany do PATH."
else
  echo "Nieznane polecenie. Użyj --help, aby wyświetlić dostępne opcje."
fi
