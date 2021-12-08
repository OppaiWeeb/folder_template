##
## EPITECH PROJECT, date
## makefile
## File description:
## well, real programmers use ed
##
CC = gcc

NAME = name

SRC = src/main.c\

SRC_TEST = tests/tests_push_swap.c\

CFLAGS = -O3 -Wall -Wextra -Wpedantic -Wundef -iquote $(I_DIR)

DEBUG_FLAGS = -ggdb -g2 -Wall -Wextra -Wundef -Wpedantic -iquote $(I_DIR)

TEST_FLAGS = -l criterion --coverage

OBJ = $(SRC:.c=.o)

OBJ_TEST = $(SRC_TEST:.c=.o)

OBJ_DEBUG = $(SRC:.c=_debug.o)

%_debug.o: %.c
	$(CC) $(DEBUG_FLAGS) -c -o $@ $<

I_DIR = ./include

L_DIR = ./lib

LIB = -l my

LDFLAGS =  -L $(L_DIR) $(LIB)

all: libmy $(NAME)

libmy:
	make -C $(L_DIR)

$(NAME): $(OBJ)
	@echo -e "\e[1;34mBuilding $@\e[0m"
	$(CC) $(OBJ) $(CFLAGS) -o $(NAME) $(LDFLAGS)

debug: $(OBJ_DEBUG)
	@echo -e "\e[1;34mBuilding $@\e[0m"
	$(CC) $(OBJ_DEBUG) $(CFLAGS) -o $(NAME)_debug $(LDFLAGS)

clean:
	make clean -C $(L_DIR)
	rm -rf $(OBJ) $(OBJ_DEBUG) $(OBJ_TEST) *.gcda *.gcno

fclean: clean
	make fclean -C $(L_DIR)
	rm -rf $(NAME) test $(NAME)_debug

unit_tests: fclean all $(OBJ_TEST)
	$(CC) -o test $(OBJ_TEST) $(OBJ) $(TEST_FLAGS) $(LDFLAGS)

tests_run: unit_tests
	./test

re: clean all
	make -C $(L_DIR)

.PHONY: all libmy $(NAME) clean fclean unit_tests tests_run run re debug
