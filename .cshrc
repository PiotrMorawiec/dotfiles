# Please put all of your aliases in ~/.alias or ~/.aliases
# and your definitions in .cshrc.$USER

#set verbose
#set debug

# Set prompt type ( to make prompt more visible)
# can be 'light' , 'dark' , 'short' , 'twoline', 'coloured'
# or 'none' to ignore preset prompts.
set prompt_type = light

# Common definitions
if (-e /tools/common/env/cshrc.env) source /tools/common/env/cshrc.env

# User definitions
if (-e ~/.cshrc.$USER) source ~/.cshrc.$USER

# Set prompt
if (-e $env_dir/cshrc.prompt) source $env_dir/cshrc.prompt

# Set variables for dbus(required to start Kate editor)
# setenv DBUS_SESSION_BUS_ADDRESS unix:abstract=/tmp/dbus-74GD1yEAdn,guid=e69a27a70eefb206c3ef1455648c875c
# setenv DBUS_SESSION_BUS_PID 5001

# Load aliases
source ~/.csh_aliases

# Function to get the current Git branch
alias parse_git_branch 'set git_branch=`git branch |& sed -e "/^[^*]/d" -e "s/* \(.*\)/(\1)/"`'

# Update the prompt
# set prompt = "%{\033[0;31m%}%n%{\033[0m%} %{\033[0;32m%}@%{\033[0m%} %{\033[0;34m%}%m%{\033[0m%} %{\033[0;33m%}[ %~ ]%{\033[0m%} %{\033[0;31m%}${git_branch} %{\033[0m%}$ "
set prompt = "%{\033[0;31m%}%n%{\033[0m%} %{\033[0;32m%}@%{\033[0m%} %{\033[0;34m%}%m%{\033[0m%} %{\033[0;33m%}[ %~ ]%{\033[0m%} %{\033[0;31m%}%{\033[0m%}$ "

# This is necessary to un jenkins agent on cad-compute1
# setenv PATH /tools/common/pkgs/jdk/openjdk-17.0.2/bin/:$PATH

# Load Verible (used by VSCode verible plugin)
module load verible/v0.0-3946-g851d3ff4