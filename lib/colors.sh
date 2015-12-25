black=30
red=31
green=32
yellow=33
blue=34
purple=35
cyan=36
white=37

none() { printf "\e[${2:-0}m$1\e[0m"; }

black() { printf "\e[${2:-0};${3:-30}m$1\e[0m"; }
red() { printf "\e[${2:-0};${3:-31}m$1\e[0m"; }
green() { printf "\e[${2:-0};${3:-32}m$1\e[0m"; }
yellow() { printf "\e[${2:-0};${3:-33}m$1\e[0m"; }
blue() { printf "\e[${2:-0};${3:-34}m$1\e[0m"; }
purple() { printf "\e[${2:-0};${3:-35}m$1\e[0m"; }
cyan() { printf "\e[${2:-0};${3:-36}m$1\e[0m"; }
white() { printf "\e[${2:-0};${3:-37}m$1\e[0m"; }

bold() { [ "$#" = "1" ] && none "$1" 1 || "$1" "$2" 1; }

underline() { [ "$#" = "1" ] && none "$1" 4 || "$1" "$2" 4; }

background() { printf "\e[$($1 "$2" "0" $(($(eval "echo \$$1") + 10)))"; }

dark() { printf "\e[$($1 "$2" "0" $(($(eval "echo \$$1") + 60)))"; }
