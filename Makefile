##
## EPITECH PROJECT, 2020
## libmy.a
## File description:
## Makefile
##

CC	= 	gcc

SRC1	=	$(wildcard lib/my/*.c)

OBJ1	=	$(SRC1:.c=.o)

LIB	=	lib/my/libmy.a

SRC2	=	$(wildcard *.c)

OBJ2	=  $(SRC2:.c=.o)

NAME	=	my_sokoban

LDFLAGS	=	-I./include -L./lib/my -lmy -lncurses

CFLAGS	=	-W -Wall -Wextra

all:	$(NAME)

$(NAME):	$(LIB) $(OBJ2)
	$(CC) -o $(NAME) $(OBJ2) $(LDFLAGS)

$(LIB): $(OBJ1)
	$(AR) rsc $(LIB) $(OBJ1)

clean:
	$(RM) $(OBJ1)
	$(RM) $(OBJ2)
	$(RM) *~
	$(RM) '#*#'

fclean: clean
	$(RM) -f $(NAME)
	$(RM) *.o
	$(RM) $(LIB)

re:	fclean all
