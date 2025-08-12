GREEN	=	\033[1;32m
CYAN	=	\033[0;36m
WHITE	=	\033[0m
CLEAR	=	\r\033[K

NAME	=	minishell


CC		=	cc
CFLAGS	=	-Wall -Wextra -Werror
CFLAGS	+=	-I /opt/homebrew/opt/readline/include
CFLAGS	+=	-I libft
CFLAGS	+=	-I inc

LDFLAGS	=	-L/opt/homebrew/opt/readline/lib -lreadline

LIBFT	=	libft/libft.a

SRCS	= 	src/main.c									\
			src/main_utils/init_data.c					\
			src/main_utils/init_environment.c			\
			src/main_utils/modes.c						\
			src/main_utils/wait_signal.c				\
			src/set_prompt/set_prompt.c					\
			src/set_input/set_input.c					\
			src/set_input/split_input.c					\
			src/set_input/split_cmd.c					\
			src/set_input/new_token.c					\
			src/set_input/expand_content.c				\
			src/execution_utils/execution.c				\
			src/execution_utils/execution_utils1.c		\
			src/execution_utils/execution_utils2.c		\
			src/execution_utils/child_process_utils.c	\
			src/execution_utils/execute_command_utils.c	\
			src/execution_utils/heredoc_proccess.c		\
			src/built-ins/builtins.c					\
			src/built-ins/ft_echo.c						\
			src/built-ins/ft_pwd.c						\
			src/built-ins/ft_cd.c						\
			src/built-ins/ft_env.c						\
			src/built-ins/ft_export.c					\
			src/built-ins/ft_unset.c					\
			src/built-ins/ft_exit.c						\
			src/vars_utils/vars_utils1.c				\
			src/vars_utils/vars_utils2.c				\
			src/bool_utils/bools_utils1.c				\
			src/bool_utils/bools_utils2.c				\
			src/write_utils/write_utils1.c				\
			src/write_utils/write_utils2.c				\
			src/free_utils/status_utils.c				\
			src/free_utils/free_utils1.c				\
			src/free_utils/free_utils2.c				\


OBJS = $(SRCS:%.c=objs/%.o)

all: $(LIBFT) $(NAME)

$(NAME): objs $(OBJS)
	@$(CC) $(CFLAGS) $(OBJS) $(LIBFT) -o $(NAME) $(LDFLAGS)
	@echo "$(GREEN)minishell ready$(WHITE)"

$(LIBFT):
	@make --silent -C libft

objs:
	@mkdir -p objs/src/

objs/%.o: %.c
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@make --silent clean -C libft
	@rm -rf objs
	@echo "Objetcs files deleted."

fclean: clean
	@make --silent fclean -C libft
	@rm -f $(NAME)
	@echo "Full clean completed"

re: fclean all

.PHONY: all clean fclean re
