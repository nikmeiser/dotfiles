# Skip if not running interactively
[[ "$-" == *i* ]] || return

# Flush bash history after each command
export PROMPT_COMMAND='history -a'
export HISTSIZE=10000

alias grep='grep --color=always'
