##
## EPITECH PROJECT, 2023
## Lem-in
## File description:
## it makes files
##

SRC 	= 	src/main.c src/calcul.c

OBJ 	= 	$(SRC:.c=.o)

NAME	= 	a.out

CFLAGS	= 	-g -I./include -Wall -Wextra

all: $(NAME)

$(NAME):	$(OBJ)
	gcc	$(CFLAGS)  -o $(NAME) $(OBJ)
	gcc hunter_src/main.c -o my_hunter

clean:
	rm -f $(OBJ)

fclean:	clean
	rm -f $(NAME)

re:	fclean all

tests_run:
	gcc -lcriterion test/calcul_test.c src/calcul.c \
		-I./include -Wall -o unit_test
	./unit_test
	rm unit_test

.phony:
	all clean fclean re tests_run
