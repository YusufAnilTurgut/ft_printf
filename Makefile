

NAME = libftprintf.a
FLAGS = -Wall -Wextra -Werror
CC = gcc -c
RM = rm -f
AR = ar -rcs

SRC = ft_printf.c \
	ft_putchar.c \
	ft_print_str.c \
	ft_print_number.c \
	ft_printhex.c \
	ft_print_ptr.c \
	ft_unsigned_itoa.c \

OBJ = $(SRC:.c=*.o)

all: $(NAME)

$(NAME): $(OBJ)
	@$(AR) $(NAME) $(OBJ)

$(OBJ):
	@$(CC) $(FLAGS) $(SRC)

clean:
	@$(RM) $(OBJ)

fclean: clean
	@$(RM) $(NAME)

re: fclean all

.PHONY: clean fclean all re
