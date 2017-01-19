source ~/.aliases
ZSH_THEME="agnoster"
export ZSH=$HOME/.oh-my-zsh

CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="false"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git httpie)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
export TERMINAL="terminator"

#source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

OS="`uname`"
case $OS in
  'Linux')
    OS='Linux'
    alias ls='ls --color=auto'
    export JAVA_HOME=/opt/jdk
    export PATH=$PATH:~/Tools/grails/bin:$JAVA_HOME/bin:~/Tools/groovy/bin
    ;;
  'Darwin') 
    OS='Mac'
	  export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/
    ;;
  *) ;;
esac
