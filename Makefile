LIBC =	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
		ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c \
		ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_strchr.c \
		ft_strdup.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c \
		ft_strnstr.c ft_strrchr.c ft_tolower.c ft_toupper.c

ADDITIONAL =	ft_itoa.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c \
				ft_split.c ft_strjoin.c ft_strmapi.c ft_strtrim.c ft_substr.c ft_striteri.c \
				ft_isspace.c ft_free.c ft_malloc.c ft_free_all.c ft_add_malloc.c ft_intlen.c \
				ft_dft_strjoin.c ft_dft_strdup.c get_next_line.c ft_isnewline.c ft_dft_calloc.c \
				ft_dft_substr.c ft_printf.c print_hexa.c print_nbr.c print_ptr.c \
				print_str.c print_utils.c ft_dft_itoa.c \

SRCS = ${LIBC} ${ADDITIONAL}

OBJS = ${SRCS:.c=.o}

LIB = libft.a

CC = gcc

CFLAGS = -Wall -Werror -Wextra -I ./

.c.o:
		${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${LIB}:	${OBJS}
		ar -rsc ${LIB} ${OBJS}


all: 	${LIB}

clean:
		rm -f ${OBJS}

fclean:	clean;
		rm -f ${LIB}

re:	fclean all

.PHONY: all clean fclean re bonus
