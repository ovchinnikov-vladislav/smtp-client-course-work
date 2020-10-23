BUILD_DIR=build
BIN_DIR=$(BUILD_DIR)/bin
OBJ_DIR=$(BUILD_DIR)/obj
SRC_DIR=src/main

CC=gcc

CLIENT_O=$(OBJ_DIR)/smtp-client.o
CLIENT_C=$(SRC_DIR)/main.c

clear:
	rm -R $(BUILD_DIR) -f

mkd: clear
	mkdir $(BIN_DIR)
	mkdir $(OBJ_DIR)

compile: mkd
	$(CC) $(CLIENT_C) -c -o $(CLIENT_O) -Wall -Werror

link: compile
	$(CC) -o $(BIN_DIR)/smtp-client.bin $(CLIENT_O)

# Остальные стадии требуется дописать
# test_units: link
# 	...

# test_memory: link
# 	...

# test_system: link
# 	...

# test_style: link
# 	...

# tests: test_units, test_memory, test_system, test_style
# 	...

# report: tests
# 	...
