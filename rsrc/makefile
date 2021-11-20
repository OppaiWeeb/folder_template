##
## EPITECH PROJECT, 2021
## makefile
## File description:
## well, real programmers use ed
##

CC = gcc

WIN_CC = x86_64-w64-mingw32-gcc

NAME = name

SRC = src/main.c\

SRC_TEST = tests/tests_name.c\

OBJ = $(SRC:.c=.o)

OBJ_TEST = $(SRC_TEST:.c=.o)

I_DIR = ./includes

L_DIR = ./lib

LIB = -l my

CFLAG = -Wall -Wextra -Wpendantic -Wundef -I $(I_DIR) -L $(L_DIR) $(LIB)

DFLAG = $(CFLAG) -g3 -ggdb --coverage -l criterion

all: $(NAME)

libmy:
	make -C $(L_DIR)

$(NAME): $(OBJ) libmy
	$(CC) -o $(NAME) $(OBJ) $(CFLAG)

window: $(OBJ)
	$(WIN_CC) -o $(NAME) $(OBJ) $(CFLAG)

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

re: fclean all
	make re -C $(L_DIR)

.PHONY: all libmy $(NAME) clean fclean unit_tests tests_run run re
