autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# Function to parse Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Prompt definition
PS1='%F{red}%n%f %F{green}@%f %F{blue}%m%f %F{yellow}[ %~ ]%f %F{red}$(parse_git_branch) %f$ '

# These already have been included in .zprofile
# source .zsh_aliases

# # Add Homebrew apps to PATH
# export PATH=/opt/homebrew/bin:$PATH
