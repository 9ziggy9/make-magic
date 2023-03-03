CFLAGS=-Wall -Werror -Wconversion -pedantic -std=c11

# COLOR ALIASES
RED=\033[31m
GREEN=\033[32m
YELLOW=\033[33m
BLUE=\033[34m
MAGENTA=\033[35m
CYAN=\033[36m
RESET=\033[0m

# Colored output function
define print_in_color
	@printf "$1"
	@printf "$2"
	@printf "\033[0m"
endef

all: main

run: main
	$(call print_in_color, $(GREEN), \nRUNNING CODE:\n)
	@./main && rm -rf ./main

main: main.c
	@printf "\033[34m"
	@printf "COMPILING:\n"
	@printf "\033[0m"
	cc ./main.c $(CFLAGS) -o main

clean:
	rm -rf ./main
