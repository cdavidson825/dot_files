

##################
# ALIAS SECTION  #
##################
alias ls="ls -G"
alias ll='ls -ltr'
alias h='history'
alias ..='cd ..'
alias vi='vim'
alias bashrc='source ~/.bashrc'
alias vi_bashrc='vim ~/.bashrc'
alias crepl='java -cp $CLOJURE_JARS clojure.main'
alias gs='git status'

##################
# ENV  SECTION   #
##################
export JAVA6=1.6.0_65
export JAVA7=1.7.0_45
export JAVA8=1.8.0_20
export JAVA_VERSION=${JAVA8}
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk${JAVA_VERSION}.jdk/Contents/Home

export ANT_HOME=/development/apache/ant/apache-ant-1.9.2
export ANT_OPTS=-Xmx1024m
export DEV=/development
export FW=${DEV}/frameworks
export LANGUAGES=${DEV}/lang
export PLAY=${FW}/play
export WORK=${DEV}/work
export PROJECTS=${WORK}/projects

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



export EMISSARY_HOME=${PROJECTS}/emissary
export BURRITO_HOME=${PROJECTS}/burrito
alias EM_DEBUG_ON="export DEBUG_JDK_OPTIONS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=8000'"
alias EM_DEBUG_OFF="unset DEBUG_JDK_OPTIONS"
alias ant_nr="ant -Divy.has.resolved=true"
export EMISSARY_INSTALL_FLAVOR="BURRITO,HDFS"

export M2_HOME=/opt/maven

export GROOVY_HOME=${LANGUAGES}/groovy/current
export SCALA_HOME=${LANGUAGES}/scala/current
export CLOJURE_HOME=${LANGUAGES}/clojure/current
export GRADLE_HOME=${FW}/gradle/current
export ECLIPSE_WORK=$DEV/work
export HADOOP_PREFIX=/opt/hadoop
export HADOOP_HOME=/opt/hadoop
export ACCUMULO_HOME=/opt/accumulo
export ZOOKEEPER_HOME=/opt/zookeeper
export TOMCAT_HOME=$DEV/apache/apache-tomcat-6.0.26
export DERBY_HOME=/Applications/javadb10.5.3.0
export H2_HOME=/development/frameworks/h2/

export TM_WORK=$DEV/work/Textmate
export TM_CLASSES_DIR=$TM_WORK/classes
export TM_GROOVY=${GROOVY_HOME}/bin

export GROOVY_JARS=$GROOVY_HOME/lib/*.jar
export SCALA_JARS=$SCALA_HOME/lib/*.jar
export CLOJURE_JARS=${CLOJURE_HOME}/*.jar
export JAVA_JARS=

export CLASSPATH=.:$GROOVY_JARS:$SCALA_JARS:${CLOJURE_JARS}:$JAVA_JARS:$TM_CLASSES_DIR

export PATH=~/bin:/opt/local/bin:/opt/local/sbin:/opt/subversion/bin:/usr/local/git/bin:/usr/local/mysql/bin:$ANT_HOME/bin:$GROOVY_HOME/bin:${GRADLE_HOME}/bin:$SCALA_HOME/bin:$HADOOP_PREFIX/bin:/$ACCUMULO_HOME/bin:$ZOOKEEPER_HOME/bin:$M2_HOME/bin:.:$PATH

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


