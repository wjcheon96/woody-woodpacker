CC = cc
CFLAGS = -Wall -Wextra -Werror

SRCS = main.c

NAME = woody_woodpacker

ifdef sanitize
	CFLAGS = -Wall -Wextra -Werror -fsanitize=address -g3
endif

%.o: %.c
	@echo "$(YELLOW) *** Generating object files ... *** $(DEFAULT)"
	@$(CC) $(CFLAGS) -c $< -o $@

$(NAME) : $(OBJS)
	@echo "$(GREEN) *** Compiling woody_woodpacker ... *** $(DEFAULT)"
	@$(CC) $(CFLAGS) -o $@ $^
	@echo "$(GREEN) *** Compile Done!! *** $(DEFAULT)"

all : $(NAME)
	@echo "$(GREEN) *** Project Ready! *** $(DEFAULT)"

clean :
	@$(RM) $(OBJS)
	@echo "$(RED) *** Deleting objects ... *** $(DEFAULT)"

fclean : clean
	@$(RM) $(NAME)
	@echo "$(RED) *** Deleting executable ... *** $(DEFAULT)"

re :
	@make fclean
	@make all

sanitize :
	@make sanitize=1 re

.PHONY: all clean fclean re

RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
DEFAULT = \033[0m