alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
alias myip="curl --silent http://icanhazip.com"
alias apt-upgrade="aptitude update && aptitude upgrade && apt-get update && apt-get upgrade"
alias path="echo $PATH | tr ':' '\n' | sort"

# via the CHOCK
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

source ~/.bash_color

