##
## EPITECH PROJECT, date
## makefile
## File description:
## padoru
##
CC = gcc

NAME = name

SRC = src/main.c\

SRC_TEST = tests/tests_name.c\

CFLAGS = -Wall -Wextra -Wpedantic -Wshadow -Wpointer-arith -Wcast-qual -Wundef
CFLAGS += -iquote $(I_DIR)

DEBUG_FLAGS = -ggdb -g2 -Wall -Wextra -Wundef -Wpedantic -iquote $(I_DIR)

TEST_FLAGS = -l criterion --coverage

OBJ = $(SRC:.c=.o)

OBJ_TEST = $(SRC_TEST:.c=.o)

OBJ_DEBUG = $(SRC:.c=_debug.o)

%.o: %.c
	$(BUILD_PRINT)
	@ $(CC) $(CFLAGS) -c -o $@ $<

%_debug.o: %.c
	$(BUILD_PRINT)
	@ $(CC) $(DEBUG_FLAGS) -c -o $@ $<

BUILD_PRINT = @echo -e "$(OK_COLOR)Building $<$(NO_COLOR)"

I_DIR = ./include

L_DIR = ./lib

LIB = -l my

LDFLAGS =  -L $(L_DIR) $(LIB)

NO_COLOR=\x1b[0m
OK_COLOR=\x1b[32;01m
ERROR_COLOR=\x1b[31;01m
WARN_COLOR=\x1b[33;01m

all: libmy $(NAME)

libmy:
	@ make -C $(L_DIR)

$(NAME): $(OBJ)
	@echo -e "$(OK_COLOR)Building $@$(NO_COLOR)"
	@ $(CC) $(OBJ) $(CFLAGS) -o $(NAME) $(LDFLAGS)

debug: libmy $(OBJ_DEBUG)
	@echo -e "$(OK_COLOR)Building $@$(NO_COLOR)"
	@ $(CC) $(OBJ_DEBUG) $(CFLAGS) -o $(NAME)_debug $(LDFLAGS)

clean:
	@ make clean -C $(L_DIR)
	@echo -e "$(ERROR_COLOR){-} $(OBJ)$(OBJ_TEST)$(OBJ_DEBUG)$(NO_COLOR)"
	@ rm -rf $(OBJ) $(OBJ_DEBUG) $(OBJ_TEST) *.gcda *.gcno

fclean: clean
	@ make fclean -C $(L_DIR)
	@echo -e "$(ERROR_COLOR){-} $(NAME)$(NO_COLOR)"
	@ rm -rf $(NAME) test $(NAME)_debug

unit_tests: fclean all $(OBJ_TEST)
	$(CC) -o test $(OBJ_TEST) $(OBJ) $(TEST_FLAGS) $(LDFLAGS)

tests_run: unit_tests
	./test

re: clean all
	@ make -C $(L_DIR)

.PHONY: all libmy $(NAME) clean fclean unit_tests tests_run run re debug
