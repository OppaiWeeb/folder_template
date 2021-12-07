##
## EPITECH PROJECT, date
## makefile
## File description:
## quote
##

CC = gcc

NAME = name

SRC = src/main.c\

SRC_TEST = tests/tests_push_swap.c\

OBJ = $(SRC:.c=.o)

OBJ_TEST = $(SRC_TEST:.c=.o)

I_DIR = ./include

L_DIR = ./lib

LIB = -l my

CFLAGS = -g2 -ggdb -Wall -Wextra -Wpedantic -Wundef -I $(I_DIR)

DEBUG_FLAG = --coverage -l criterion

LDFLAGS =  -L $(L_DIR) $(LIB)

all: $(NAME)

libmy:
	make -C $(L_DIR)

$(NAME): $(OBJ) libmy
	$(CC) $(CFLAGS) -o $(NAME) $(OBJ) $(LDFLAGS)

clean:
	make clean -C $(L_DIR)
	rm -rf $(OBJ) $(OBJ_TEST) *.gcda *.gcno

fclean: clean
	make fclean -C $(L_DIR)
	rm -rf $(NAME) test

unit_tests: fclean all $(OBJ_TEST)
	$(CC) -o test $(OBJ_TEST) $(OBJ) $(DFLAG)

tests_run: unit_tests
	./test

run: fclean all
	./$(NAME)

re: clean all
	make -C $(L_DIR)

.PHONY: all libmy $(NAME) clean fclean unit_tests tests_run run re
