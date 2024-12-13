#!/bin/bash

# Sources, containing ideas of useful aliases:
# https://opensource.com/article/19/7/bash-aliases
# https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html

# GIT related aliases
alias gl="git log \
          --graph --abbrev-commit --decorate \
          --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(bold white)%s%C(reset) %C(bold dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' "

alias gl="git log \
        --graph --abbrev-commit --decorate \
        --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(bold white)%s%C(reset) %C(bold dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all "

alias gf="git fetch"
alias gs="git status"
alias gb="git branch"
alias gc="git checkout"
alias gss="git submodule status"
alias gsu="git submodule update"
alias gsuir="git submodule update --init --recursive"
alias gsf="git submodule foreach"
alias gsfr="git submodule foreach 'git reset --hard'"

alias gwl="git worktree list"
alias gwa="git worktree add"
alias gwe="git worktree remove"
alias gwm="git worktree move"
alias gwlk="git worktree lock"
alias gwuk="git worktree unlock"
alias gwp="git worktree prune"

alias glf='git show --pretty="" --name-only'

alias ll="ls -l --color=auto"
alias lt="ls --human-readable --size -1 -S --classify"

# Print only mounted disks
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"

# Help fild a command in history
alias gh='history|grep'

# Lists files y modification time
alias left='ls -t -1'

# Count files
alias count='find . -type f | wc -l'

# Remove file safely by moving it into trash (it can be then reverted at any time)
alias tcn='mv --force -t ~/.local/share/Trash'

# Run emacs in terminal
alias emacs_term="emacs -nw"

# Helps creating Python Virtual Environments
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Some verification-related stuff
alias verdi_open_fsdb="qsub -V -b y -q inter.q -l vf=100G verdi -sx -ssf"
alias verdi_open_cov="qsub -V -b y -q inter.q -l vf=100G verdi -sx -cov -covdir"

# Some examples how to use lmstat
alias check_cadence_lic="lmstat -a -c /data/tools/license_files/cadence_license.dat"
alias check_avery_lic="lmstat -a -c /data/tools/license_files/avery_lic.dat"
