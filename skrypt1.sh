#!/bin/bash
if [ "$1" == "--date" ]; then
  echo "Dzisiejsza data to: $(date +%Y-%m-%d)"
fi
