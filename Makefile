# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rdas-nev <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/03 12:15:41 by rdas-nev          #+#    #+#              #
#    Updated: 2022/03/08 13:38:33 by rdas-nev         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		=	ft_printf.c ft_putchar.c ft_putsigned.c \
				ft_putstr.c ft_puthex.c  ft_putunsigned.c\
				ft_putptr.c ft_strlen.c ft_calloc.c \
				ft_bzero.c ft_memset.c ft_itoa.c \
				ft_uitoa.c ft_strupper.c\

OBJS		= $(SRCS:.c=.o)

CC			= gcc
RM			= rm -f
CFLAGS		= -Wall -Wextra -Werror -I.

NAME		= libftprintf.a

all:		$(NAME)


$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean $(NAME)
