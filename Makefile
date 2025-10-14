# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cpinho-c <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/07 13:21:18 by cpinho-c          #+#    #+#              #
#    Updated: 2025/04/07 13:21:22 by cpinho-c         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
NAME = push_swap
CC = gcc
CFLAGS = -Wall -Werror -Wextra
SRCS = push_swap.c utils/utils.c utils/handleargs.c operations/swap.c \
	   operations/push.c operations/rotate.c operations/rev_rotate.c \
	   operations/sort.c operations/radix.c

OBJS = $(SRCS:.c=.o)
RM = rm -rf
LIBFT = libft/libft.a

.SILENT:

all: $(NAME)

$(NAME): $(OBJS) $(LIBFT)
	$(CC) -g $(CFLAGS) -o $(NAME) $(OBJS) $(LIBFT)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean: 
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all