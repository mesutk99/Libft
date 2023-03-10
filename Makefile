# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mkureksi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/10 16:09:13 by mkureksi          #+#    #+#              #
#    Updated: 2022/12/10 16:10:55 by mkureksi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	= ft_isascii.c\
		ft_isprint.c\
 		ft_isalpha.c\
 		ft_isdigit.c\
 		ft_isalnum.c \
		ft_tolower.c\
		ft_toupper.c\
		ft_strlen.c\
		ft_strlcpy.c\
		ft_strlcat.c \
		ft_strchr.c\
		ft_strrchr.c\
		ft_strnstr.c\
		ft_strncmp.c\
		ft_atoi.c\
		ft_memset.c\
		ft_bzero.c\
		ft_memcpy.c\
		ft_memmove.c\
		ft_memchr.c\
		ft_memcmp.c\
		ft_strdup.c\
		ft_calloc.c\
		ft_substr.c\
		ft_strjoin.c\
		ft_strtrim.c\
		ft_split.c\
		ft_itoa.c\
		ft_strmapi.c\
		ft_striteri.c\
		ft_putchar_fd.c\
		ft_putstr_fd.c\
		ft_putendl_fd.c\
		ft_putnbr_fd.c\


OBJS	= $(SRCS:.c=.o)
NAME	= libft.a
CC	= gcc
CFLAGS	= -Wall -Wextra -Werror
LIB1	= ar -rcs
LIB2	= ranlib
AR 	= ar rcs
RM	= rm -f

INCLUDE	= libft.h

all:	$(NAME)

$(NAME):$(OBJS) $(INCLUDE)
		$(LIB1) $(NAME) $(OBJS)
		$(LIB2) $(NAME)

.c.o:	$(CC) $(CFLAGS) -I$(INCLUDE) -c $< -o $(<:.c=.o)

Clean:	$(RM) $(OBJS)

fclean:	clean
	$(RM) ${NAME}

re:	fclean all

.PHONY:	all clean fclean re
