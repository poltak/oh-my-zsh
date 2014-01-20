# CONSTANTS

# Make root user different color to others.
if [ $UID -eq 0 ]; then
  UCOLOUR="red";
else
  UCOLOUR="green";
fi

# Make colour of bad return code red.
ZSH_THEME_PROMPT_RETURNCODE_PREFIX="%{$fg_bold[red]%}"

# Make different colours for git branches depending on their status.
ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}○%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%})%{$reset_color%}"

# Gets return status of last run command.
local ret_status="%(?:%{$fg[green]%}:%{$fg[red]%})%?%{$reset_color%}"



# FUNCTIONS

# Function that checks if an ssh connection is currently active.
function ssh_connection() {
  if [[ -n $SSH_CONNECTION ]]; then
    echo "%{$fg_bold[blue]%}(ssh) "
  fi
}



# PROMPTS

# Makes prompt that looks like:
# user@host: $cwd
# [0] %
PROMPT=$'\n$(ssh_connection)%{$fg[$UCOLOUR]%}%n%{$reset_color%}@%{$fg[cyan]%}%m%{$reset_color%}: %{$fg_bold[magenta]%}%~\
%{$reset_color%}[${ret_status}]%{$reset_color%} %# '

# Show git branch and time on the right prompt.
RPROMPT='$(git_prompt_info)  \
%{$fg[cyan]%}%D{%H:%M}%{$reset_color%}'
