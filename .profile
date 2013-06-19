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

export SBCL_HOME=/opt/lisp/sbcl/sbcl/lib/sbcl

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export JVISUALVM_HOME=/opt/visualvm/visualvm

export SCALA_HOME=/opt/scala/sbt
export GROOVY_HOME=/opt/groovy/groovy
export GRAILS_HOME=/opt/grails/grails
export APPENGINE_HOME=/opt/google/appengine-java-sdk

export MAVEN_HOME=/opt/maven/maven
export ANT_HOME=/usr/share/ant
export GRADLE_HOME=/opt/gradle/gradle

export JBOSS_HOME=/opt/jboss/jboss
export JETTY_HOME=/opt/jetty/jetty

export HSQLDB_HOME=/opt/hsqldb/hsqldb
export HBASE_HOME=/opt/hbase/hbase
export MONGODB_HOME=/opt/mongodb/mongodb

export YAWS_HOME=/opt/yaws/yaws
export RABBITMQ_HOME=/opt/rabbitmq/rabbitmq
export NODEJS_HOME=/opt/nodejs/nodejs
export MULTIMARKDOWN_HOME=/opt/multimarkdown/multimarkdown
export SOAPUI_HOME=/opt/soapui/soapui

## Java options
##
export ANT_OPTS="-Xms512m -Xmx1024m -XX:PermSize=512m -XX:MaxPermSize=512m"
export MAVEN_OPTS="-Xms512m -Xmx768m -XX:PermSize=512m -XX:MaxPermSize=512m"
#export JAVA_OPTS="$JAVA_OPTS -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=4000,server=y,suspend=n"

## Path
##
export PATH=~/bin:$JVISUALVM_HOME/bin:$JAVA_HOME/bin:$MAVEN_HOME/bin:$PATH
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export PATH=$PATH:$SCALA_HOME/bin:$GROOVY_HOME/bin:$GRAILS_HOME/bin:$GRADLE_HOME/bin:$ANT_HOME/bin
export PATH=$PATH:$SOAPUI_HOME/bin:$APPENGINE_HOME/bin:$MULTIMARKDOWN_HOME/bin:$PROJECTS_HOME/ndpar/ruby
export PATH=$PATH:$MONGODB_HOME/bin
export PATH=$PATH:$NODEJS_HOME/bin
export PATH=$PATH:$ERLANG_HOME/bin
export PATH=$PATH:$YAWS_HOME/bin
export PATH=$PATH:$RABBITMQ_HOME/sbin
export PATH=$PATH:/opt/lisp/sbcl/sbcl/bin
export PATH=$PATH:/Applications/Flash\ Player.app/Contents/MacOS/

# Optional (and useful) Git commands
export PATH=$PATH:$PROJECTS_HOME/gitorious/willgit/bin

# FOP is required to build Erlang docs
export PATH=$PATH:/opt/fop/fop

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
alias grep='grep --color=auto'
alias ll='ls -al'
alias tac='tail -r'
alias cdp='cd $PROJECTS_HOME'
alias g='/Applications/MacVim.app/Contents/MacOS/Vim --remote-silent'
alias chopen='/usr/bin/open -a "/Applications/Google Chrome.app"'

# Windows specific settings
#alias ll='ls -al --color'
#alias g='/cygdrive/c/Program\ Files/Vim/vim73/gvim.exe --remote-silent'

