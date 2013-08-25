

##################
# ALIAS SECTION  #
##################
alias ls="ls -G"
alias ll='ls -ltr'
alias h='history'
alias ..='cd ..'
alias vi='vim'
alias bashrc='source ~/.bashrc'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
  . /usr/local/git/contrib/completion/git-completion.bash
fi

if [ -f /usr/local/git/contrib/completion/git-prompt.sh ]; then
  . /usr/local/git/contrib/completion/git-prompt.sh
  export GIT_PS1_SHOWDIRTYSTATE=true
  export GIT_PS1_SHOWUNTRACKEDFILES=true
  export GIT_PS1_SHOWUPSTREAM="auto"
  PS1='\t \w $(__git_ps1 "(%s)")$ '
fi

##################
# ENV  SECTION   #
##################
export ANT_OPTS=-Xmx1024m
export DEV=/development
export PLAY=${DEV}/play
export WORK=${DEV}/work
export PROJECTS=${WORK}/projects

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
export EMISSARY_HOME=${PROJECTS}/emissary
export BURRITO_HOME=${PROJECTS}/burrito
alias EM_DEBUG_ON="export DEBUG_JDK_OPTIONS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=8000'"
alias EM_DEBUG_OFF="unset DEBUG_JDK_OPTIONS"
alias ant_nr="ant -Divy.has.resolved=true"

export M2_HOME=/opt/maven

export GROOVY_HOME=$DEV/groovy/groovy-1.7.0
export GRAILS_HOME=$DEV/grails/grails-1.2.0
export SCALA_HOME=$DEV/scala/scala-2.7.7
export ECLIPSE_WORK=$DEV/work/
export HADOOP_HOME=/opt/hadoop
export ACCUMULO_HOME=/opt/accumulo
export ZOOKEEPER_HOME=/opt/zookeeper
export TOMCAT_HOME=$DEV/apache/apache-tomcat-6.0.26
export DERBY_HOME=/Applications/javadb10.5.3.0

export TM_WORK=$DEV/work/Textmate
export TM_CLASSES_DIR=$TM_WORK/classes

export GROOVY_JARS=$GROOVY_HOME/lib/groovy-1.7.0.jar:$GROOVY_HOME/lib/antlr-2.7.7.jar:$GROOVY_HOME/lib/asm-3.2.jar:$GROOVY_HOME/lib/asm-util-3.2.jar

export SCALA_JARS=$SCALA_HOME/lib/scala-library.jar

export JAVA_JARS=$ECLIPSE_WORK/Personal/Common/build/cwd-common.jar:$DEV/3rdPartyLibs/google/google-collect-1.0/google-collect-1.0.jar

export CLASSPATH=.:$GROOVY_JARS:$SCALA_JARS:$JAVA_JARS:$TM_CLASSES_DIR

export PATH=~/bin:/opt/local/bin:/opt/local/sbin:/opt/subversion/bin:/usr/local/git/bin:/usr/local/mysql/bin:$GROOVY_HOME/bin:$GRAILS_HOME/bin:$SCALA_HOME/bin:$HADOOP_HOME/bin:/$ACCUMULO_HOME/bin:$ZOOKEEPER_HOME/bin:$M2_HOME/bin:.:$PATH

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


