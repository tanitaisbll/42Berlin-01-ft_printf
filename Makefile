# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tgeiger <tgeiger@student.42berlin.de>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/19 12:41:14 by tgeiger           #+#    #+#              #
#    Updated: 2024/09/19 13:49:19 by tgeiger          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = $(wildcard *.c)
LIBFT_SRC = $(wildcard src/*.c)

OBJ = $(SRC:.c=.o)
LIBFT_OBJ = $(LIBFT_SRC:.c=.o)

CC = cc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f
INCLUDES = -I.

all: $(NAME)

$(NAME): $(OBJ) $(LIBFT_OBJ)
	ar rc $(NAME) $(OBJ) $(LIBFT_OBJ)
		ranlib $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	$(RM) $(OBJ) $(LIBFT_OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
