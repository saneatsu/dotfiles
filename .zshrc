# use color on shell
autoload -Uz colors
colors

export PATH=$PATH:/usr/local/bin
export PATH="$HOME/.pyenv/shims:$PATH"
export export PATH=$PATH:/usr/local/bin/bat
export PATH=$PATH:/usr/local/bin/chromedriver

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#
# Alias
#
alias bat='nocorrect bat'
alias bundle='nocorrect bundle'
alias forfind='for d in `find ./ -type d`; do echo $d,`ls "$d" | wc -l`; done'
alias lsal='ls -al'
alias andst='open -a /Applications/Android\ Studio.app'
alias aws='nocorrect aws'
dirtouch() {
    mkdir -p "$(dirname $1)"
    touch "$1"
}
alias touch=dirtouch
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias g="git"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/saneatsuwakana/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/saneatsuwakana/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/saneatsuwakana/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/saneatsuwakana/google-cloud-sdk/completion.zsh.inc'; fi

#
# React
#
export PATH=$PATH:~/usr/local/bin/npm
export PATH=$PATH:~/usr/local/bin/yarn

#
# Python
#
#export PYTHONPATH="/usr/local/lib/python3.7/site-packages/:$PYTHONPATH"

#
# MySQL
# 
MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

#
# Flutter
# 
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH=$PATH:~/flutter/bin
export PATH=$PATH:~/usr/local/bin/pod
export FLUTTER_ROOT=~/flutter/bin

#
# rbenv, Rails
#
export RBENV_ROOT=/usr/local/var/rbenv
export PATH=$PATH:/usr/bin/rails
eval "$(rbenv init -)"
eval "$(direnv hook zsh)"
