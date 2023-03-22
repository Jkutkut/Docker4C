export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

alias ce='gcc -Wall -Wextra -Werror'
alias cw='gcc -Wall -Wextra'
alias csanitize='gcc -Wall -Wextra -Werror -fsanitize=address'
