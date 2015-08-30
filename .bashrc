#.bashrc

#Source global def
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

##################
# TEMP STUFF     #
##################
alias nfjs='cd /development/conference/nfjs/NVSS2015SE2015/'

##################
# FUNCTIONS      #
##################

function grep_files()
{
  if [ $# == 0 ] ; then
     echo "usage: $0 <term_to_grep>"
  else
    term="$@"
    echo "Searching for \"${term}\" ..."
    grep -iHn --color=always -R --exclude-dir .git -- "${term}" .
  fi
}
alias grep_files=grep_files

function find_file()
{
  if [[ $# == 1 ]]; then
    input_file_pattern=$1
    echo "Finding files that match pattern: \"${input_file_pattern}\""
    echo ""
    find . -name "${input_file_pattern}" -print
    echo ""
  else
    echo "Need to provide a pattern to search for"
  fi
}
alias find_file=find_file

function vi_file()
{
  if [[ $# == 1 ]]; then
    input_file_pattern=$1
    count=`find . -name "${input_file_pattern}" -print | wc -l | sed 's/ //g'`
    if [[ $count == 0 ]]; then
      echo "Could not find any files matching input pattern: ${input_file_pattern}"
    elif [[ $count == 1 ]]; then
      vi `find . -name "${input_file_pattern}" -print`
    else
      echo "Found $count files for input pattern: \"${input_file_pattern}\""
      find . -name "${input_file_pattern}" -print
    fi
  else
    echo "Need to provide file to vi"
  fi
}
alias vi_file=vi_file

function find_class()
{
  if [ $# == 0 ]; then
    echo "usage: $0 <class_to_find>"
  else
    class_to_find=$1
    for f in *.jar; do echo "Searching $f..."; jar -tvf $f | fgrep --color=always ${class_to_find}; done
  fi
}
alias find_class=find_class

function millis_to_date()
{
  if [[ $# == 1 ]]; then
    millis=$1
    echo -e "milliseconds: $millis = `perl -e "print scalar localtime(${millis} / 1000)"` "
  else
    echo "Need to provide milliseconds."
  fi
}
alias millis_to_date=millis_to_date

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

export XMLLINT_INDENT="    "

export PATH=~/bin:/opt/local/bin:/opt/local/sbin:/opt/subversion/bin:/usr/local/git/bin:/usr/local/mysql/bin:$ANT_HOME/bin:$GROOVY_HOME/bin:${GRADLE_HOME}/bin:$SCALA_HOME/bin:$HADOOP_PREFIX/bin:/$ACCUMULO_HOME/bin:$ZOOKEEPER_HOME/bin:$M2_HOME/bin:.:$PATH

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


