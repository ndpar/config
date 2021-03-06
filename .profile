export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

## Better history
##
export HISTIGNORE="&:[ ]*"
export HISTSIZE=5000
export HISTFILESIZE=5000
export PROMPT_COMMAND=" history -a"
shopt -s histappend

## Home directories
##
export PROJECTS_HOME=~/projects

export ERLANG_HOME=/opt/erlang/otp
export ERL_LIB=$ERLANG_HOME/lib/erlang/lib

export QHOME=~/q
export APL_HOME=/opt/apl/apl
export RACKET_HOME=/Applications/Racket\ v6.6
export SBCL_HOME=/opt/lisp/sbcl/sbcl/lib/sbcl
export SML_HOME=/usr/local/smlnj

export JAVA_HOME=/Library/Java/JavaVirtualMachines/default/Contents/Home

export SCALA_HOME=/opt/scala/sbt
export GRAILS_HOME=/opt/grails/grails
export APPENGINE_HOME=/opt/google/appengine-java-sdk

export JBOSS_HOME=/opt/jboss/jboss
export JETTY_HOME=/opt/jetty/jetty

export HSQLDB_HOME=/opt/hsqldb/hsqldb
export HBASE_HOME=/opt/hbase/hbase
export MONGODB_HOME=/opt/mongodb/mongodb
export RIAK_HOME=/opt/riak/riak/rel/riak
export RIAK_CS_HOME=/opt/riak/riak-cs/rel/riak-cs
export STANCHION_HOME=/opt/riak/stanchion/rel/stanchion

export RABBITMQ_HOME=/usr/local/opt/rabbitmq
export NODEJS_HOME=/opt/nodejs/nodejs
export MULTIMARKDOWN_HOME=/opt/multimarkdown/multimarkdown
export SOAPUI_HOME=/opt/soapui/soapui

## Java options
##
export MAVEN_OPTS="-Xms512m -Xmx768m"
#export JAVA_OPTS="$JAVA_OPTS -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=4000,server=y,suspend=n"

## Path
##
export PATH=~/bin:$JAVA_HOME/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$PATH:$QHOME/m64
export PATH=$PATH:$APL_HOME/bin
export PATH=$PATH:$RACKET_HOME/bin
export PATH=$PATH:$SML_HOME/bin
export PATH=$PATH:$SCALA_HOME/bin:$GRAILS_HOME/bin
export PATH=$PATH:$SOAPUI_HOME/bin:$APPENGINE_HOME/bin:$MULTIMARKDOWN_HOME/bin:$PROJECTS_HOME/ndpar/ruby
export PATH=$PATH:$MONGODB_HOME/bin
export PATH=$PATH:$NODEJS_HOME/bin
export PATH=$PATH:$ERLANG_HOME/bin
export PATH=$PATH:$RABBITMQ_HOME/sbin
export PATH=$PATH:$RIAK_HOME/bin
export PATH=$PATH:$RIAK_CS_HOME/bin
export PATH=$PATH:$STANCHION_HOME/bin
export PATH=$PATH:./node_modules/.bin
export PATH=$PATH:/opt/lisp/sbcl/sbcl/bin

# Optional (and useful) Git commands
export PATH=$PATH:$PROJECTS_HOME/gitorious/willgit/bin

# FOP is required to build Erlang docs
export PATH=$PATH:/opt/fop/fop

## Homebrew packages
# ack bash dos2unix erlang groovy htop jq maven rabbitmq redis telnet wget yaws

# Ruby manager
export PATH=$PATH:$HOME/.rvm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Groovy manager
[[ -s "$HOME/.gvm/bin/gvm-init.sh" ]] && source "$HOME/.gvm/bin/gvm-init.sh"

## Editors
##
export SVN_EDITOR=vi
export EDITOR=vi

## Aliases
##
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias zgrep='zgrep --color=auto'
alias grep='grep --color=auto'
alias ll='ls -al'
alias tac='tail -r'
alias cdp='cd $PROJECTS_HOME'
alias g='/Applications/MacVim.app/Contents/MacOS/Vim --remote-silent'
alias q='rlwrap q'
alias chopen='/usr/bin/open -a "/Applications/Google Chrome.app"'
alias unmount='umount'

# Use arrows instead of CTRL-R to traverse history
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# Windows specific settings
#alias vi=vim
#alias ll='ls -al --color'
#alias g='/cygdrive/c/Program\ Files/Vim/vim73/gvim.exe --remote-silent'

