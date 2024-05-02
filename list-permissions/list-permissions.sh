#!/bin/bash

# Define cores
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Imprime cabeçalho
echo "==============================="
printf "${GREEN}%-20s %s${NC}\n" "Arquivo" "Permissões"
echo "==============================="

# Lista arquivos e permissões
while IFS= read -r file; do
    permissions=$(stat -c '%a' "$file")
    printf "%-20s ${YELLOW}%s${NC}\n" "$file" "$permissions"
done < <(ls)

echo "==============================="
echo ""

