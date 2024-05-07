#!/bin/bash

# Diretório atual onde o script está sendo executado
diretorio="$(pwd)"

# Diretório de saída para os arquivos MP3 convertidos
diretorio_saida="${diretorio}/convertido"

# Cria o diretório de saída, se ainda não existir
mkdir -p "$diretorio_saida"

# Loop pelos arquivos MP4 no diretório
for arquivo_mp4 in "${diretorio}"/*.mp4; do
    # Extrair o nome do arquivo sem a extensão e o caminho do diretório
    nome_arquivo=$(basename "$arquivo_mp4" .mp4)
    
    # Converter MP4 para MP3 e preservar o nome do arquivo
    ffmpeg -i "$arquivo_mp4" -q:a 0 -map a "${diretorio_saida}/${nome_arquivo}.mp3"
    
    # Informar que a conversão foi concluída para o arquivo atual
    echo "Conversão concluída: $nome_arquivo.mp4"
done

echo "Todos os arquivos MP4 foram convertidos para MP3 com sucesso!"

