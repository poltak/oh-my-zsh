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
alias pingoo='ping www.google.com'
alias ....='../../..'
alias update='brew -v update && brew upgrade'

# Mac OS X application aliases for use in shell.
alias firefox='open -a "Firefox"'
alias safari='open -a "Safari"'
alias subl='open -a "Sublime Text 2"'
alias preview='open -a "Preview"'
alias markd='open -a "LightPaper"'
