##########################
# apt
alias apt-update='sudo apt update && sudo apt upgrade'

##########################
# Grep
##########################
## Colorize the grep command output for ease of use (good for log files)##
# alias grep='grep --color=auto'
# alias egrep='egrep --color=auto'
# alias fgrep='fgrep --color=auto'

##########################
# File/Directory
##########################
alias ..='cd ..'
alias cd..='cd ..'
alias mkdir='mkdir -pv'
# alias ls='ls --color=auto -lhart'
# alias ff="find . -name '$1*'"
alias df='df -H'
alias diff='colordiff'

##########################
# Process
##########################
alias psx="ps -auxw ¦ grep $1"

##########################
# Network
##########################
# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'

# reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

##########################
# File/Group Permissions
##########################
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

##########################
# System Information
##########################

## pass options to free ##
alias meminfo='free -m -l -t'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## Get server cpu info ##
alias cpuinfo='lscpu'

## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##

## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

# # some more ls aliases
# alias ll='ls -alF'
# alias la='ls -A'
# alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

##########################
# Date/Time
##########################
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%m-%d-%Y"'
