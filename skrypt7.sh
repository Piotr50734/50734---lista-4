
if [ "$1" = "--init" ]; then
  git clone https://github.com/Piotr50734/50734---lista-4
  export PATH=$PATH:$(pwd)/skrypt
  echo "Repozytorium zostało sklonowane do $(pwd)/skrypt, a ścieżka do folderu została dodana do PATH."
  exit 0
fi