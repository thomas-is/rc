alias l='ls -hl --group-directories-first'
alias ll='ls -hal --group-directories-first'
alias grep='grep --color'
alias python='docker run --rm -it --user $(id -u):$(id -g) -v $(pwd):/src -w /src 0lfi/python python'
alias php7='docker run --rm -it --user $(id -u):$(id -g) -v $(pwd):/src -w /src 0lfi/php7 php'
alias php8='docker run --rm -it --user $(id -u):$(id -g) -v $(pwd):/src -w /src 0lfi/php8 php'
alias php='php8'
alias duckduckgo='docker run --rm -it --name firefox --shm-size=2048m -e HOME=/home/firefox -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/.Xauthority:/firefox/.Xauthority:ro -e PULSE_SERVER=unix:/pulse -v /run/user/$(id -u)/pulse/native:/pulse -v ~/downloads/web:/home/firefox/downloads 0lfi/firefox'
