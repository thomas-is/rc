alias l='ls -hl --group-directories-first'
alias ll='ls -hal --group-directories-first'
alias grep='grep --color'
alias diff='diff --color'
alias python='docker run --rm -it --user $(id -u):$(id -g) -v $(pwd):/src -w /src 0lfi/python python'
alias php7='docker run --rm -it --user $(id -u):$(id -g) -v $(pwd):/src -w /src 0lfi/php7 php'
alias php8='docker run --rm -it --user $(id -u):$(id -g) -v $(pwd):/src -w /src 0lfi/php8 php'
alias php='php8'
alias duckduckgo='~/bin/duckduckgo'
