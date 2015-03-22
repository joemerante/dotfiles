# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# NONE OF THE DISABLE AUTOCORRECT OPTIONS FUCKING WORK.
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/git/bin:/usr/local/bin:/Users/joemerante/.rvm/bin:/Users/joemerante/pear/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
# virtualenvwrapper stuff
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_LOG_DIR="$WORKON_HOME"
export VIRTUALENVWRAPPER_HOOK_DIR="$WORKON_HOME" export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
# source /System/Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh

alias show-hidden='defaults write com.apple.finder AppleShowAllFiles -bool YES'
alias hide-hidden='defaults write com.apple.finder AppleShowAllFiles -bool NO'
alias drush='/Applications/MAMP/htdocs/drupal/drush/drush'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'
alias heroky='heroku'
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop'
alias chrome='/usr/bin/open -a "/Applications/Google Chrome.app"'
alias bx='bundle exec'
alias subl='sublime'
alias st='status'
alias gcam='git commit -am'
alias rsep="rails s -e production"
alias psagr="ps aux | grep ruby"
alias dbtest="RAILS_ENV=test rake db:drop db:create db:migrate db:seed"
ibooks() {
	echo '/Users/joemerante/Library/Containers/com.apple.BKAgentService/Data/Documents/iBooks/Books'
}
# show sym links in current directory
alias sym='ls -l `find . -maxdepth 1 -type l -print`'
#PATH="${PATH}:/Applications/MAMP/Library/Library/bin:$PATH"
#export PATH

# set path so that the bin folder that brew uses comes before the /usr/bin
PATH=/usr/local/bin:$PATH

PATH=$PATH:/Applications/MAMP/Library/bin
export PATH

export EDITOR="/usr/local/bin/subl -w"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# put environment variables in .zshenv
