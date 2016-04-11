CC=gcc
CFLAGS=-W -Wall -pedantic -std=11
LFLAGS=-lm

SRC=$(wildcard *.c)
BIN=$(SRC:.c=)

.PHONY: all clean help

help:
	@echo "Sintaxe: make <opcoes>"
	@echo "		Opcoes:"
	@echo "			help : mostra essa imagem"
	@echo "			all	 :  compila todas as fontes da pasta"
	@echo "			clean: apaga todos os binários criados"
	@echo ""


all: $(BIN)

clean:
	@rm -f $(BIN)

%:%.c
	@echo -n "Gerando executável $@"
	@$(CC) $< -o $@ $(CFLAGS) $(LFLAGS) && echo "[OK]"	