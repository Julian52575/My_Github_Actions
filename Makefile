##
## EPITECH PROJECT, 2023
## Lem-in
## File description:
## it makes files
##

SRC 	= 	$(wildcard src/*.c src/*/*.c lib/my/*.c)

OBJ 	= 	$(SRC:.c=.o)

NAME	= 	a.out

CFLAGS	= 	-g -I./include -Wall -Wextra

all: $(NAME)

$(NAME):	$(OBJ)
	gcc	$(CFLAGS)  -o $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean:	clean
	rm -f $(NAME)

re:	fclean all

tests_run:
	gcc -lcriterion test/*.c src/calcul.c \
		-I./include -Wall -o unit_test
	./unit_test
	rm unit_test

.phony:
	all clean fclean re tests_run
