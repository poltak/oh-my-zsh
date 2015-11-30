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
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

# Custom aliases.
alias horza='ssh horza'
alias raspi='mosh raspi'
alias raspi_r='mosh raspi_r'
alias pingoo='ping -c 5 www.google.com'
alias ....='../../..'
alias update='brew -v update && brew upgrade --all'
alias brewin='brew -v install'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias irc='weechat-curses'
alias aria2tor='aria2c --conf-path=${HOME}/.aria2/aria2.torrent'

# Mac OS X application aliases for use in shell.
alias firefox='open -a "Firefox"'
alias safari='open -a "Safari"'
alias subl='open -a "Sublime Text"'
alias preview='open -a "Preview"'
alias lock='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'
