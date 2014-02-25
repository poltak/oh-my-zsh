# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'

# Show history
if [ "$HIST_STAMPS" = "mm/dd/yyyy" ]
then
    alias history='fc -fl 1'
elif [ "$HIST_STAMPS" = "dd.mm.yyyy" ]
then
    alias history='fc -El 1'
elif [ "$HIST_STAMPS" = "yyyy-mm-dd" ]
then
    alias history='fc -il 1'
else
    alias history='fc -l 1'
fi
# List direcory contents
alias l='ls -lah'
alias ll='ls -l'
alias la='ls -lA'
alias sl=ls # often screw this up

# Custom aliases.
alias horza='ssh horza'
alias raspi='ssh raspi'
alias raspi_r='ssh raspi_r'
alias hardin='ssh hardin'
alias pingoo='ping -c 5 www.google.com'
alias ....='../../..'
alias update='brew -v update && brew upgrade'
alias brewin='brew -v install'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias irc='weechat-curses'
alias aria2tor='aria2c --conf-path=${HOME}/.aria2/aria2.torrent'

# Mac OS X application aliases for use in shell.
alias firefox='open -a "Firefox"'
alias safari='open -a "Safari"'
alias subl='open -a "Sublime Text 2"'
alias preview='open -a "Preview"'
alias markd='open -a "LightPaper"'

# Git aliases.
alias gpush='git push'
alias gpull='git pull'
alias gcommit='git commit'
alias gadd='git add'
alias gbranch='git branch'
alias gcheckout='git checkout'
alias gstatus='git status'
alias gstat='gstatus -s'
alias grm='git rm'
alias gdel='git rm --cached'
alias gmv='git mv'
alias glog='git log --decorate'
