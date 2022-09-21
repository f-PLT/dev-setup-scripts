#!/bin/bash
echo '*'
echo '* Bash shell configuration script - STARTING'
echo '*'
echo 'Appending to bashrc file...'

cat << EOF >> ~/.bashrc

# Colors in the terminal
function parse_git_branch_and_add_brackets {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
  }
export LSCOLORS=CxdxxxxxExxxxxExExCxCx
PS1="\n\e[36m\$(parse_git_branch_and_add_brackets) \e[32;1m\u\e[34;1m@\h\e[0m \e[33;1m[\w]\e[0m\n $ "

# Vim shortcut in command line
set -o vi

# Giteditor
export GIT_EDITOR=`which vim`

# Python alias
alias py='python3'
alias python='python3'
alias pip='pip3'

# Safety alias
alias cp='/bin/cp -i'
alias mv='/bin/mv -i'
alias rm='/bin/rm -i'

# keygen alias
alias keygen='ssh-keygen -t rsa -b 4096'

# History pipe alias
alias hgrep='history | grep'

# Conda aliases
alias createEnv='conda create python=3 -n'

# Docker
alias dcp='docker compose'
EOF

echo '*'
echo '* Bash shell configuration script - DONE'
echo '* You will need to refresh your bash for it to take effect'
echo '*'