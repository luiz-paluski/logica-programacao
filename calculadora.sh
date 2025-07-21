#!/bin/bash

# data e hora
LOG_FILE="log_calculadora_$(date +%Y%m%d_%H%M%S).txt"

# Caminho para o interpretador Python
PYTHON_PATH=$(which python3)

# Caminho da calculadora
PYTHON_SCRIPT="calculadora_basica.py"

# Ver se o arquivo existe
if [ ! -f "$PYTHON_SCRIPT" ]; then
    echo "Erro: O arquivo do script Python '$PYTHON_SCRIPT' não foi encontrado."
    exit 1
fi
echo "--- Iniciando a Calculadora Python ---"
echo "Esta sessão será gravada em '$LOG_FILE'."
echo ""

# Script Python
script -c "$PYTHON_PATH \"$PYTHON_SCRIPT\"" "$LOG_FILE"
echo ""
echo "--- Execução da calculadora finalizada. Verifique o arquivo '$LOG_FILE' ---"
echo "Pressione ENTER para retornar ao terminal."