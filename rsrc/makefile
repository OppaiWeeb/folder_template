##
## EPITECH PROJECT, date
## makefile
## File description:
## padoru
##
CC	?=	gcc

NAME	:=	name

SRC_DIR	:=	src
SRC	:=	$(SRC_DIR)/main.c\

TEST_DIR	:=	tests
SRC_TEST	:=	$(TEST_DIR)/tests_name.c\

INCLUDE_DIR	:=	include
LIB_DIR		:= 	lib
LIB 		:=	-l my
LIB_TEST		:=	-l criterion

CFLAGS		:=	-Wall -Wextra -Wpedantic -Wundef
CFLAGS		+=	-iquote $(INCLUDE_DIR)

DEBUG_FLAGS	:=	-ggdb -g2 $(CFLAGS) -fanalyzer

LDFLAGS		:=	-L $(LIB_DIR) $(LIB)

OBJ_DIR		:=	.obj/
OBJ	:=	$(addprefix $(OBJ_DIR), $(SRC:.c=.o))
OBJ_DEBUG	:=	$(addprefix $(OBJ_DIR), $(SRC:.c=.o))

mains		:=	$(OBJ)/$(SRC_DIR)/main_debug.o
OBJ_TEST	:=	$(addprefix $(OBJ_DIR), $(SRC:.c=.o))
OBJ_TEST 	+=	$(filter-out $(mains), $(OBJ))

$(OBJ_DIR)%.o: %.c
	@ echo -e "$(OK_COL){+} Build $<$(NO_COL)"
	@ mkdir -p $(@D)
	@ $(CC) $(CFLAGS) -c -o $@ $<

$(OBJ_DIR)%_debug.o: %.c
	@ echo -e "$(OK_COL){+} Build $<$(NO_COL)"
	@ mkdir -p $(@D)
	@ $(CC) $(DEBUG_FLAGS) -c -o $@ $<

NO_COL=\x1b[0m
OK_COL=\x1b[32;01m
ERR_COL=\x1b[31;01m
WARN_COL=\x1b[33;01m

all: libmy $(NAME)

libmy:
	@ make -C $(LIB_DIR)

$(NAME): $(OBJ)
	@ echo -e "$(OK_COL){+} Link $@$(NO_COL)"
	@ $(CC) -o $(NAME) $(OBJ) $(LDFLAGS)

debug: libmy $(OBJ_DEBUG)
	@ echo -e "$(OK_COL){+} Link $(NAME)_debug$(NO_COL)"
	@ $(CC) $(OBJ_DEBUG) -o $(NAME)_debug $(LDFLAGS)

clean:
	@ make clean -C $(LIB_DIR)
	@ echo -e "$(ERR_COL){-} Remove $(OBJ) $(OBJ_TEST)\
	$(OBJ_DEBUG)$(NO_COL)"
	@ rm -rf $(OBJ_DIR) *.gcda *.gcno vgcore*

fclean: clean
	@ make fclean -C $(LIB_DIR)
	@ echo -e "$(ERR_COL){-} Remove $(NAME) $(NAME)_debug test$(NO_COL)"
	@ rm -rf $(NAME) test $(NAME)_debug

unit_tests: fclean libmy $(OBJ_DEBUG) $(OBJ_TEST)
	@ $(CC) -o test $(OBJ_TEST) $(LDFLAGS) $(LIB_TEST)

tests_run: unit_tests
	./test

run:	$(NAME)
	./$(NAME)

re: clean all

.PHONY: all clean fclean unit_tests tests_run run re
