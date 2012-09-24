export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

## Home directories
##
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export MAVEN_HOME=/opt/maven/maven
export ANT_HOME=/usr/share/ant
export JBOSS_HOME=/opt/jboss/jboss
export GROOVY_HOME=/opt/groovy/groovy
export GRAILS_HOME=/opt/grails/grails
export GRADLE_HOME=/opt/gradle/gradle
export SOAPUI_HOME=/opt/soapui/soapui
export APPENGINE_HOME=/opt/google/appengine-java-sdk
export HSQLDB_HOME=/opt/hsqldb/hsqldb
export HBASE_HOME=/opt/hbase/hbase

export RABBITMQ_HOME=/Users/andrey/projects/rabbit/rabbitmq-1.8.1
export MULTIMARKDOWN_HOME=/opt/multimarkdown/multimarkdown
export SBCL_HOME=/opt/lisp/sbcl/sbcl/lib/sbcl

export ERL_LIB=/usr/local/lib/erlang/lib

export PROJECTS_HOME=~/projects

## Options
##
export ANT_OPTS="-Xms512m -Xmx1024m -XX:PermSize=512m -XX:MaxPermSize=512m"

export MAVEN_OPTS="-Xms512m -Xmx768m -XX:PermSize=512m -XX:MaxPermSize=512m"
#export MAVEN_OPTS="-Xms512m -Xmx768m -XX:PermSize=512m -XX:MaxPermSize=512m -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=4000,server=y,suspend=n"
#export MAVEN_OPTS="-Xms512m -Xmx768m -XX:PermSize=512m -XX:MaxPermSize=512m -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=4000,server=y,suspend=n -agentpath:/opt/yourkit/yjp-8.0.6/bin/mac/libyjpagent.jnilib=disablestacktelemetry,delay=10000,sessionname=Jetty"

## Path
##
export PATH=~/bin:$JAVA_HOME/bin:$MAVEN_HOME/bin:$PATH
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export PATH=$PATH:$GROOVY_HOME/bin:$GRAILS_HOME/bin:$GRADLE_HOME/bin:$ANT_HOME/bin:$SOAPUI_HOME/bin:$APPENGINE_HOME/bin:$MULTIMARKDOWN_HOME/bin:$PROJECTS_HOME/ndpar/ruby
export PATH=$PATH:/usr/local/lib/erlang/bin:/opt/lisp/sbcl/sbcl/bin
export PATH=$PATH:/Applications/Flash\ Player.app/Contents/MacOS/

export PATH=$PATH:$PROJECTS_HOME/gitorious/willgit/bin

## Editors
##
export SVN_EDITOR=vi
export EDITOR=vi

## Aliases
##
alias ll='ls -al'
alias tac='tail -r'
alias cdp='cd ~/projects'
alias g='/Applications/MacVim.app/Contents/MacOS/Vim --remote-silent'

# Windows specific settings
#alias ll='ls -al --color'
#alias g='/cygdrive/c/Program\ Files/Vim/vim73/gvim.exe --remote-silent'

