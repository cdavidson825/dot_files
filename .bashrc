#.bashrc

#Source global def
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

######################
# CD Directory Alias #
######################
alias cd_nfjs='cd /development/conference/nfjs/NVSSNov2018/'
alias cd_variant='cd ~/Documents/companies/variant'

##################
# ALIAS SECTION  #
##################
alias ls="ls -G"
alias ll='ls -ltra'
alias l='ll'
alias ..='cd ..'
alias vi='vim'
alias bashrc='source ~/.bashrc'
alias vi_bashrc='vim ~/.bashrc'
alias gs='git status'
alias cls="echo -e '\0033\0143'"
alias delete_local_snapshots='for img in `sudo tmutil listlocalsnapshotdates | egrep '^2'`; do sudo tmutil deletelocalsnapshots $img; done'

##################
# ENV  SECTION   #
##################
export DEV=/development
export OSS=${DEV}/oss
export LANGUAGES=${DEV}/lang
export WORK=${DEV}/work
export PROJECTS=${WORK}/projects

export BURRITO_HOME=${PROJECTS}/burrito-grande
export EMISSARY_HOME=${BURRITO_HOME}/emissary
export PROJECT_BASE='/development/work/projects/burrito-grande/assembly/target/dev/dev'
alias EM_DEBUG_ON="export DEBUG_JDK_OPTIONS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=8000'"
alias EM_DEBUG_OFF="unset DEBUG_JDK_OPTIONS"

export M2_HOME=/opt/maven
export MAVEN_OPTS="-Xms1024m -Xmx2048m -Djava.awt.headless=true -Duser.timezone=GMT"

export CLOJURE_HOME=${LANGUAGES}/clojure/current
export ECLIPSE_WORK=${DEV}/work
export HADOOP_PREFIX=/opt/hadoop
export HADOOP_HOME=/opt/hadoop
export ACCUMULO_HOME=/opt/accumulo
export ZOOKEEPER_HOME=/opt/zookeeper
export ACTIVEMQ_HOME=${OSS}/activemq/current
export SPARK_HOME=${OSS}/spark/current
export ES_HOME=${OSS}/elasticsearch/current
export KIBANA_HOME=${OSS}/kibana/current

export XMLLINT_INDENT="    "

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
    grep -aiHn --color=always -R --exclude-dir .git -- "${term}" .
  fi
}
alias grep_files=grep_files

function find_file()
{
  if [[ $# == 1 ]]; then
    input_file_pattern="*${1}*"
    echo "Finding files that match term: \"${input_file_pattern}\""
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

PS1s='\t \W $(__git_ps1 "(%s)")$ '
alias short='PS1=$PS1s'

export PATH=~/bin:/opt/local/bin:${HADOOP_PREFIX}/bin:${ACCUMULO_HOME}/bin:${ZOOKEEPER_HOME}/bin:$M2_HOME/bin:${ACTIVEMQ_HOME}/bin:${ES_HOME}/bin:${KIBANA_HOME}/bin:.:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/chrisdavidson/.sdkman"
[[ -s "/Users/chrisdavidson/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/chrisdavidson/.sdkman/bin/sdkman-init.sh"
