# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cpinho-c <cpinho-c@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/07 13:21:18 by cpinho-c          #+#    #+#              #
#    Updated: 2026/03/05 22:54:58 by cpinho-c         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap
CC = gcc
CFLAGS = -Wall -Werror -Wextra
SRCS = push_swap.c \
	   utils/utils.c \
	   utils/handleargs.c \
	   operations/swap.c \
	   operations/push.c \
	   operations/rotate.c \
	   operations/rev_rotate.c \
	   operations/sort.c \
	   operations/radix.c

OBJS = $(SRCS:.c=.o)
RM = rm -rf
LIBFT_DIR = ./libft
LIBFT = $(LIBFT_DIR)/libft.a
LIBFT_GIT = https://github.com/kamipc/42_Libft.git

.SILENT:

all: $(NAME)

$(LIBFT):
	@if [ ! -d "$(LIBFT_DIR)" ]; then \
	echo "Cloning libft..."; \
	git clone $(LIBFT_GIT) $(LIBFT_DIR); \
	fi
	$(MAKE) -C $(LIBFT_DIR)
	echo "Libft compiled successfully!"

$(NAME): $(LIBFT) $(OBJS)
	$(CC) -g $(CFLAGS) -o $(NAME) $(OBJS) $(LIBFT)
	echo "$(NAME) compiled successfuly!"

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean: 
	$(RM) $(OBJS)
	@if [ -d "$(LIBFT_DIR)" ]; then $(MAKE) -C $(LIBFT_DIR) clean; fi

fclean: clean
	$(RM) $(NAME)
	@if [ -d "$(LIBFT_DIR)" ]; then $(MAKE) -C $(LIBFT_DIR) fclean; fi

re: fclean all