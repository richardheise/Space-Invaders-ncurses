# Makefile para o jogo Space Invaders ncurses

# Compilador a ser usado
CC = gcc

# Flags de compilação
# -Iinc: Adiciona o diretório 'inc' para procura de includes
CFLAGS = -Iinc

# Bibliotecas a serem linkadas
# -lncurses: Biblioteca ncurses para interface de terminal
# -lm: Biblioteca matemática
LIBS = -lncurses -lm

# Diretórios
SRC_DIR = src
INC_DIR = inc
BIN_DIR = bin
OBJ_DIR = obj

# Arquivos fonte C
# Encontra todos os arquivos .c no diretório src
SRCS = $(wildcard $(SRC_DIR)/*.c)

# Arquivos objeto (serão criados no diretório OBJ_DIR)
# Substitui .c por .o e adiciona o caminho do diretório OBJ_DIR
OBJS = $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRCS))

# Nome do executável
TARGET = main

# Regra principal: compila tudo
.PHONY: all
all: $(BIN_DIR)/$(TARGET)

# Regra para criar os diretórios de build se eles não existirem
$(BIN_DIR) $(OBJ_DIR):
	mkdir -p $@

# Regra para compilar o executável final
# Depende de todos os arquivos objeto
$(BIN_DIR)/$(TARGET): $(OBJS) | $(BIN_DIR)
	$(CC) $(OBJS) -o $@ $(LIBS)

# Regra genérica para compilar arquivos .c em .o
# -c: Compila o arquivo fonte em arquivo objeto sem linkar
# $<: Representa o primeiro pré-requisito (o arquivo .c)
# $@: Representa o alvo da regra (o arquivo .o)
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Regra para executar o programa
.PHONY: run
run: all
	clear
	$(BIN_DIR)/$(TARGET)

# Regra para limpar arquivos gerados
.PHONY: clean
clean:
	@echo "Limpando arquivos..."
	rm -rf $(OBJ_DIR) $(BIN_DIR)